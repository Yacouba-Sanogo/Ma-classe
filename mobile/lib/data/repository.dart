import 'dart:async';

import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../domain/grading.dart' as g;
import 'database.dart';

const _uuid = Uuid();
String newId() => _uuid.v4();

class BusinessException implements Exception {
  BusinessException(this.message);
  final String message;
  @override
  String toString() => message;
}

class TermInput {
  const TermInput(this.start, this.end);
  final DateTime start;
  final DateTime end;
}

class StudentRow {
  const StudentRow(this.student, this.enrollment);
  final Student student;
  final Enrollment enrollment;
}

class AssignmentRow {
  const AssignmentRow(this.assignment, this.subject, this.classroom);
  final TeachingAssignment assignment;
  final Subject subject;
  final Classroom classroom;
}

class AttendanceRow {
  const AttendanceRow(this.record, this.student);
  final AttendanceRecord record;
  final Student student;
}

class GradeRow {
  const GradeRow(this.student, this.grade);
  final Student student;

  /// null tant que rien n'a été saisi (équivaut à « en attente »).
  final Grade? grade;
}

class ResultRow {
  const ResultRow(this.student, this.termAverages, this.year);
  final Student student;

  /// Moyennes des trimestres 1 à 3 (null = non évaluable).
  final List<double?> termAverages;
  final g.YearAverage year;
}

class AttendanceStats {
  const AttendanceStats(this.student, this.present, this.absent, this.late,
      this.excused);
  final Student student;
  final int present, absent, late, excused;
  int get total => present + absent + late + excused;
}

/// Point d'accès unique aux données. Toutes les écritures sont locales et
/// transactionnelles (RM-027, RM-030) ; la synchronisation viendra au Lot 10.
class Repository {
  Repository(this.db);
  final AppDatabase db;

  DateTime get _now => DateTime.now();

  // ------------------------------------------------------------- Années
  Stream<List<AcademicYear>> watchYears() => (db.select(db.academicYears)
        ..where((t) => t.deletedAt.isNull())
        ..orderBy([(t) => OrderingTerm.desc(t.startDate)]))
      .watch();

  Stream<AcademicYear?> watchActiveYear() => (db.select(db.academicYears)
        ..where((t) => t.deletedAt.isNull() & t.status.equals('active')))
      .watchSingleOrNull();

  Future<AcademicYear?> activeYear() => (db.select(db.academicYears)
        ..where((t) => t.deletedAt.isNull() & t.status.equals('active')))
      .getSingleOrNull();

  Stream<List<SchoolTerm>> watchTerms(String yearId) =>
      (db.select(db.schoolTerms)
            ..where((t) => t.academicYearId.equals(yearId))
            ..orderBy([(t) => OrderingTerm.asc(t.number)]))
          .watch();

  /// RM-001..RM-005 : crée l'année et exactement trois trimestres, atomiquement.
  Future<String> createAcademicYear({
    required String label,
    required DateTime start,
    required DateTime end,
    required List<TermInput> terms,
  }) async {
    if (label.trim().isEmpty) throw BusinessException('Le libellé est requis.');
    if (!end.isAfter(start)) {
      throw BusinessException("La fin de l'année doit suivre son début.");
    }
    if (terms.length != 3) {
      throw BusinessException('Une année comporte exactement trois trimestres.');
    }
    for (var i = 0; i < 3; i++) {
      final t = terms[i];
      if (!t.end.isAfter(t.start)) {
        throw BusinessException('Trimestre ${i + 1} : dates incohérentes.');
      }
      if (t.start.isBefore(start) || t.end.isAfter(end)) {
        throw BusinessException(
            "Trimestre ${i + 1} : hors des dates de l'année."); // RM-003
      }
      if (i > 0 && !t.start.isAfter(terms[i - 1].end)) {
        throw BusinessException('Les trimestres ne doivent pas se chevaucher.'); // RM-004
      }
    }
    final yearId = newId();
    await db.transaction(() async {
      // RM-005 : une seule année active.
      await (db.update(db.academicYears)
            ..where((t) => t.status.equals('active')))
          .write(AcademicYearsCompanion(
              status: const Value('closed'), updatedAt: Value(_now)));
      await db.into(db.academicYears).insert(AcademicYearsCompanion.insert(
          id: yearId, label: label.trim(), startDate: start, endDate: end));
      const names = ['Premier trimestre', 'Deuxième trimestre', 'Troisième trimestre'];
      for (var i = 0; i < 3; i++) {
        await db.into(db.schoolTerms).insert(SchoolTermsCompanion.insert(
            id: newId(),
            academicYearId: yearId,
            number: i + 1,
            name: names[i],
            startDate: terms[i].start,
            endDate: terms[i].end));
      }
    });
    return yearId;
  }

  /// RM-006 : une année clôturée reste consultable.
  Future<void> closeYear(String yearId) =>
      (db.update(db.academicYears)..where((t) => t.id.equals(yearId))).write(
          AcademicYearsCompanion(
              status: const Value('closed'), updatedAt: Value(_now)));

  Future<void> activateYear(String yearId) => db.transaction(() async {
        await (db.update(db.academicYears)
              ..where((t) => t.status.equals('active')))
            .write(AcademicYearsCompanion(
                status: const Value('closed'), updatedAt: Value(_now)));
        await (db.update(db.academicYears)..where((t) => t.id.equals(yearId)))
            .write(AcademicYearsCompanion(
                status: const Value('active'), updatedAt: Value(_now)));
      });

  // ------------------------------------------------------------ Classes
  Stream<List<Classroom>> watchClassrooms({bool archived = false}) =>
      (db.select(db.classrooms)
            ..where((t) =>
                t.deletedAt.isNull() &
                (archived ? t.archivedAt.isNotNull() : t.archivedAt.isNull()))
            ..orderBy([(t) => OrderingTerm.asc(t.name)]))
          .watch();

  Stream<Classroom?> watchClassroom(String id) => (db.select(db.classrooms)
        ..where((t) => t.id.equals(id)))
      .watchSingleOrNull();

  Future<String> createClassroom(String name,
      {String level = '', String description = ''}) async {
    if (name.trim().isEmpty) throw BusinessException('Le nom est requis.');
    final id = newId();
    await db.into(db.classrooms).insert(ClassroomsCompanion.insert(
        id: id,
        name: name.trim(),
        level: Value(level.trim()),
        description: Value(description.trim())));
    return id;
  }

  /// RM-012 : archiver ne supprime rien.
  Future<void> archiveClassroom(String id, {bool archive = true}) =>
      (db.update(db.classrooms)..where((t) => t.id.equals(id))).write(
          ClassroomsCompanion(
              archivedAt: Value(archive ? _now : null),
              updatedAt: Value(_now)));

  // ----------------------------------------------------------- Matières
  Stream<List<Subject>> watchSubjects() => (db.select(db.subjects)
        ..where((t) => t.deletedAt.isNull())
        ..orderBy([(t) => OrderingTerm.asc(t.name)]))
      .watch();

  Future<String> createSubject(String name) async {
    if (name.trim().isEmpty) throw BusinessException('Le nom est requis.');
    final id = newId();
    await db
        .into(db.subjects)
        .insert(SubjectsCompanion.insert(id: id, name: name.trim()));
    return id;
  }

  Stream<List<AssignmentRow>> watchAssignments(
      String classroomId, String yearId) {
    final q = db.select(db.teachingAssignments).join([
      innerJoin(db.subjects,
          db.subjects.id.equalsExp(db.teachingAssignments.subjectId)),
      innerJoin(db.classrooms,
          db.classrooms.id.equalsExp(db.teachingAssignments.classroomId)),
    ])
      ..where(db.teachingAssignments.classroomId.equals(classroomId) &
          db.teachingAssignments.academicYearId.equals(yearId) &
          db.teachingAssignments.deletedAt.isNull())
      ..orderBy([OrderingTerm.asc(db.subjects.name)]);
    return q.watch().map((rows) => rows
        .map((r) => AssignmentRow(r.readTable(db.teachingAssignments),
            r.readTable(db.subjects), r.readTable(db.classrooms)))
        .toList());
  }

  Future<AssignmentRow?> getAssignment(String id) async {
    final q = db.select(db.teachingAssignments).join([
      innerJoin(db.subjects,
          db.subjects.id.equalsExp(db.teachingAssignments.subjectId)),
      innerJoin(db.classrooms,
          db.classrooms.id.equalsExp(db.teachingAssignments.classroomId)),
    ])
      ..where(db.teachingAssignments.id.equals(id));
    final r = await q.getSingleOrNull();
    if (r == null) return null;
    return AssignmentRow(r.readTable(db.teachingAssignments),
        r.readTable(db.subjects), r.readTable(db.classrooms));
  }

  Future<String> assignSubject({
    required String classroomId,
    required String subjectId,
    required String yearId,
    double coefficient = 1,
  }) async {
    if (coefficient <= 0) {
      throw BusinessException('Le coefficient doit être strictement positif.');
    }
    final exists = await (db.select(db.teachingAssignments)
          ..where((t) =>
              t.classroomId.equals(classroomId) &
              t.subjectId.equals(subjectId) &
              t.academicYearId.equals(yearId) &
              t.deletedAt.isNull()))
        .getSingleOrNull();
    if (exists != null) {
      throw BusinessException('Cette matière est déjà associée à la classe.');
    }
    final id = newId();
    await db.into(db.teachingAssignments).insert(
        TeachingAssignmentsCompanion.insert(
            id: id,
            classroomId: classroomId,
            subjectId: subjectId,
            academicYearId: yearId,
            coefficient: Value(coefficient)));
    return id;
  }

  // ------------------------------------------------------------- Élèves
  Stream<List<StudentRow>> watchEnrolled(String classroomId, String yearId) {
    final q = db.select(db.enrollments).join([
      innerJoin(
          db.students, db.students.id.equalsExp(db.enrollments.studentId)),
    ])
      ..where(db.enrollments.classroomId.equals(classroomId) &
          db.enrollments.academicYearId.equals(yearId) &
          db.enrollments.status.equals('active') &
          db.enrollments.deletedAt.isNull() &
          db.students.archivedAt.isNull())
      ..orderBy([
        OrderingTerm.asc(db.students.lastName),
        OrderingTerm.asc(db.students.firstName)
      ]);
    return q.watch().map((rows) => rows
        .map((r) => StudentRow(
            r.readTable(db.students), r.readTable(db.enrollments)))
        .toList());
  }

  Future<List<Student>> _enrolledStudents(
      String classroomId, String yearId) async {
    final rows = await watchEnrolled(classroomId, yearId).first;
    return rows.map((r) => r.student).toList();
  }

  /// Ajout manuel d'un élève + inscription dans une classe pour l'année donnée.
  Future<String> addStudent({
    required String firstName,
    required String lastName,
    required String classroomId,
    required String yearId,
    String matricule = '',
    String gender = '',
    DateTime? birthDate,
  }) async {
    if (firstName.trim().isEmpty || lastName.trim().isEmpty) {
      throw BusinessException('Nom et prénom sont requis.');
    }
    final id = newId();
    await db.transaction(() async {
      await db.into(db.students).insert(StudentsCompanion.insert(
          id: id,
          firstName: firstName.trim(),
          lastName: lastName.trim().toUpperCase(),
          matricule: Value(matricule.trim()),
          gender: Value(gender),
          birthDate: Value(birthDate)));
      await _enroll(id, classroomId, yearId);
    });
    return id;
  }

  Future<void> _enroll(
      String studentId, String classroomId, String yearId) async {
    final student = await (db.select(db.students)
          ..where((t) => t.id.equals(studentId)))
        .getSingle();
    if (student.archivedAt != null) {
      throw BusinessException(
          'Élève archivé : réactivez-le avant de l\'inscrire.'); // RM-011
    }
    final active = await (db.select(db.enrollments)
          ..where((t) =>
              t.studentId.equals(studentId) &
              t.academicYearId.equals(yearId) &
              t.status.equals('active') &
              t.deletedAt.isNull()))
        .getSingleOrNull();
    if (active != null) {
      throw BusinessException(
          "L'élève a déjà une inscription active cette année."); // RM-010
    }
    await db.into(db.enrollments).insert(EnrollmentsCompanion.insert(
        id: newId(),
        studentId: studentId,
        classroomId: classroomId,
        academicYearId: yearId,
        enrollmentDate: _now));
  }

  Future<void> updateStudent(Student s,
      {required String firstName,
      required String lastName,
      String matricule = '',
      String gender = ''}) async {
    if (firstName.trim().isEmpty || lastName.trim().isEmpty) {
      throw BusinessException('Nom et prénom sont requis.');
    }
    await (db.update(db.students)..where((t) => t.id.equals(s.id))).write(
        StudentsCompanion(
            firstName: Value(firstName.trim()),
            lastName: Value(lastName.trim().toUpperCase()),
            matricule: Value(matricule.trim()),
            gender: Value(gender),
            updatedAt: Value(_now)));
  }

  Future<void> archiveStudent(String studentId) async {
    await db.transaction(() async {
      await (db.update(db.students)..where((t) => t.id.equals(studentId)))
          .write(StudentsCompanion(
              archivedAt: Value(_now), updatedAt: Value(_now)));
      await (db.update(db.enrollments)
            ..where((t) =>
                t.studentId.equals(studentId) & t.status.equals('active')))
          .write(EnrollmentsCompanion(
              status: const Value('left'),
              exitDate: Value(_now),
              updatedAt: Value(_now)));
    });
  }

  /// Changement de classe : l'historique de l'ancienne inscription est conservé.
  Future<void> changeClass(
      String studentId, String newClassroomId, String yearId) async {
    await db.transaction(() async {
      await (db.update(db.enrollments)
            ..where((t) =>
                t.studentId.equals(studentId) &
                t.academicYearId.equals(yearId) &
                t.status.equals('active')))
          .write(EnrollmentsCompanion(
              status: const Value('left'),
              exitDate: Value(_now),
              updatedAt: Value(_now)));
      await _enroll(studentId, newClassroomId, yearId);
    });
  }

  // ---------------------------------------------------------- Présences
  Stream<List<AttendanceSession>> watchSessions(String assignmentId) =>
      (db.select(db.attendanceSessions)
            ..where((t) =>
                t.teachingAssignmentId.equals(assignmentId) &
                t.deletedAt.isNull())
            ..orderBy([(t) => OrderingTerm.desc(t.date)]))
          .watch();

  Stream<AttendanceSession?> watchSession(String id) =>
      (db.select(db.attendanceSessions)..where((t) => t.id.equals(id)))
          .watchSingleOrNull();

  /// Crée la séance et pré-remplit un enregistrement « présent » par élève inscrit.
  Future<String> createSession({
    required String assignmentId,
    required String termId,
    required DateTime date,
    String topic = '',
  }) async {
    final a = await getAssignment(assignmentId);
    if (a == null) throw BusinessException('Affectation introuvable.');
    final students = await _enrolledStudents(
        a.assignment.classroomId, a.assignment.academicYearId);
    final id = newId();
    await db.transaction(() async {
      await db.into(db.attendanceSessions).insert(
          AttendanceSessionsCompanion.insert(
              id: id,
              teachingAssignmentId: assignmentId,
              schoolTermId: termId,
              date: date,
              topic: Value(topic.trim())));
      for (final s in students) {
        await db.into(db.attendanceRecords).insert(
            AttendanceRecordsCompanion.insert(
                id: newId(), attendanceSessionId: id, studentId: s.id));
      }
    });
    return id;
  }

  Stream<List<AttendanceRow>> watchAttendance(String sessionId) {
    final q = db.select(db.attendanceRecords).join([
      innerJoin(db.students,
          db.students.id.equalsExp(db.attendanceRecords.studentId)),
    ])
      ..where(db.attendanceRecords.attendanceSessionId.equals(sessionId))
      ..orderBy([
        OrderingTerm.asc(db.students.lastName),
        OrderingTerm.asc(db.students.firstName)
      ]);
    return q.watch().map((rows) => rows
        .map((r) => AttendanceRow(
            r.readTable(db.attendanceRecords), r.readTable(db.students)))
        .toList());
  }

  /// RM-025 : modifiable même après validation.
  Future<void> setAttendance(String recordId, String status,
      {String? comment}) {
    const allowed = {'present', 'absent', 'late', 'excused'};
    if (!allowed.contains(status)) {
      throw BusinessException('Statut de présence invalide.');
    }
    return (db.update(db.attendanceRecords)..where((t) => t.id.equals(recordId)))
        .write(AttendanceRecordsCompanion(
            status: Value(status),
            comment: comment == null ? const Value.absent() : Value(comment),
            updatedAt: Value(_now)));
  }

  Future<void> validateSession(String sessionId) =>
      (db.update(db.attendanceSessions)..where((t) => t.id.equals(sessionId)))
          .write(AttendanceSessionsCompanion(
              status: const Value('validated'), updatedAt: Value(_now)));

  /// Statistiques d'absences pour une affectation (et un trimestre optionnel).
  Future<List<AttendanceStats>> attendanceStats(String assignmentId,
      {String? termId}) async {
    final q = db.select(db.attendanceRecords).join([
      innerJoin(db.attendanceSessions,
          db.attendanceSessions.id.equalsExp(db.attendanceRecords.attendanceSessionId)),
      innerJoin(db.students,
          db.students.id.equalsExp(db.attendanceRecords.studentId)),
    ])
      ..where(db.attendanceSessions.teachingAssignmentId.equals(assignmentId) &
          db.attendanceSessions.status.equals('validated'));
    if (termId != null) {
      q.where(db.attendanceSessions.schoolTermId.equals(termId));
    }
    final rows = await q.get();
    final map = <String, List<int>>{};
    final students = <String, Student>{};
    for (final r in rows) {
      final s = r.readTable(db.students);
      students[s.id] = s;
      final c = map.putIfAbsent(s.id, () => [0, 0, 0, 0]);
      switch (r.readTable(db.attendanceRecords).status) {
        case 'present':
          c[0]++;
        case 'absent':
          c[1]++;
        case 'late':
          c[2]++;
        case 'excused':
          c[3]++;
      }
    }
    final list = map.entries
        .map((e) => AttendanceStats(
            students[e.key]!, e.value[0], e.value[1], e.value[2], e.value[3]))
        .toList()
      ..sort((a, b) => a.student.lastName.compareTo(b.student.lastName));
    return list;
  }

  // -------------------------------------------------------- Évaluations
  Stream<List<Evaluation>> watchEvaluations(String assignmentId,
      {String? termId}) {
    final q = db.select(db.evaluations)
      ..where((t) {
        var c = t.teachingAssignmentId.equals(assignmentId) &
            t.deletedAt.isNull();
        if (termId != null) c = c & t.schoolTermId.equals(termId);
        return c;
      })
      ..orderBy([(t) => OrderingTerm.desc(t.evaluationDate)]);
    return q.watch();
  }

  Stream<Evaluation?> watchEvaluation(String id) =>
      (db.select(db.evaluations)..where((t) => t.id.equals(id)))
          .watchSingleOrNull();

  Future<String> createEvaluation({
    required String assignmentId,
    required String termId,
    required String title,
    required String type,
    required double maxScore,
    required double coefficient,
    required DateTime date,
  }) async {
    if (title.trim().isEmpty) throw BusinessException('Le titre est requis.');
    if (maxScore <= 0) throw BusinessException('Le barème doit être positif.');
    if (coefficient <= 0) {
      throw BusinessException('Le coefficient doit être strictement positif.');
    }
    final id = newId();
    await db.into(db.evaluations).insert(EvaluationsCompanion.insert(
        id: id,
        teachingAssignmentId: assignmentId,
        schoolTermId: termId,
        title: title.trim(),
        type: Value(type),
        maxScore: maxScore,
        coefficient: coefficient,
        evaluationDate: date));
    return id;
  }

  Stream<List<GradeRow>> watchGradeSheet(String evaluationId) async* {
    final ev = await (db.select(db.evaluations)
          ..where((t) => t.id.equals(evaluationId)))
        .getSingle();
    final a = await getAssignment(ev.teachingAssignmentId);
    final studentsStream =
        watchEnrolled(a!.assignment.classroomId, a.assignment.academicYearId);
    final gradesStream = (db.select(db.grades)
          ..where((t) => t.evaluationId.equals(evaluationId)))
        .watch();
    // Combine les deux flux sans dépendance externe.
    List<StudentRow>? students;
    List<Grade>? grades;
    await for (final _ in _merge(studentsStream.map((s) {
      students = s;
    }), gradesStream.map((x) {
      grades = x;
    }))) {
      if (students == null || grades == null) continue;
      final byStudent = {for (final g in grades!) g.studentId: g};
      yield students!
          .map((s) => GradeRow(s.student, byStudent[s.student.id]))
          .toList();
    }
  }

  /// Saisie ou correction d'une note (RM-015..RM-020).
  /// [score] null avec statut `pending` ou `exempt`.
  Future<void> setGrade({
    required String evaluationId,
    required String studentId,
    double? score,
    required String status,
    String comment = '',
  }) async {
    final ev = await (db.select(db.evaluations)
          ..where((t) => t.id.equals(evaluationId)))
        .getSingle();
    if (status == 'graded') {
      if (score == null) throw BusinessException('Note manquante.');
      try {
        g.validateScore(
            score: score, maxScore: ev.maxScore, coefficient: ev.coefficient);
      } on g.GradingException catch (e) {
        throw BusinessException(e.message);
      }
    } else {
      score = null; // RM-019 : ni zéro implicite, ni valeur résiduelle.
    }
    await db.transaction(() async {
      final existing = await (db.select(db.grades)
            ..where((t) =>
                t.evaluationId.equals(evaluationId) &
                t.studentId.equals(studentId)))
          .getSingleOrNull();
      if (existing == null) {
        await db.into(db.grades).insert(GradesCompanion.insert(
            id: newId(),
            evaluationId: evaluationId,
            studentId: studentId,
            score: Value(score),
            status: Value(status),
            comment: Value(comment)));
        return;
      }
      if (existing.score == score && existing.status == status) {
        await (db.update(db.grades)..where((t) => t.id.equals(existing.id)))
            .write(GradesCompanion(
                comment: Value(comment), updatedAt: Value(_now)));
        return;
      }
      // RM-020 : conserver l'ancienne valeur.
      await db.into(db.gradeAudits).insert(GradeAuditsCompanion.insert(
          id: newId(),
          gradeId: existing.id,
          oldScore: Value(existing.score),
          newScore: Value(score),
          oldStatus: existing.status,
          newStatus: status));
      await (db.update(db.grades)..where((t) => t.id.equals(existing.id)))
          .write(GradesCompanion(
              score: Value(score),
              status: Value(status),
              comment: Value(comment),
              updatedAt: Value(_now)));
    });
  }

  Future<List<GradeAudit>> gradeHistory(String gradeId) =>
      (db.select(db.gradeAudits)
            ..where((t) => t.gradeId.equals(gradeId))
            ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
          .get();

  // ------------------------------------------------------------ Résultats
  /// Moyenne trimestrielle d'un élève pour une affectation (null si non évaluable).
  Future<List<ResultRow>> results(String assignmentId) async {
    final a = await getAssignment(assignmentId);
    if (a == null) return [];
    final students = await _enrolledStudents(
        a.assignment.classroomId, a.assignment.academicYearId);
    final terms = await (db.select(db.schoolTerms)
          ..where((t) => t.academicYearId.equals(a.assignment.academicYearId))
          ..orderBy([(t) => OrderingTerm.asc(t.number)]))
        .get();
    final evals = await (db.select(db.evaluations)
          ..where((t) =>
              t.teachingAssignmentId.equals(assignmentId) &
              t.deletedAt.isNull()))
        .get();
    final grades = evals.isEmpty
        ? <Grade>[]
        : await (db.select(db.grades)
              ..where((t) => t.evaluationId.isIn(evals.map((e) => e.id))))
            .get();
    final evalById = {for (final e in evals) e.id: e};

    return students.map((s) {
      final avgs = terms.map((term) {
        final entries = grades
            .where((gr) =>
                gr.studentId == s.id &&
                evalById[gr.evaluationId]!.schoolTermId == term.id)
            .map((gr) {
          final ev = evalById[gr.evaluationId]!;
          return g.ScoredEntry(
              score: gr.score,
              maxScore: ev.maxScore,
              coefficient: ev.coefficient,
              status: g.GradeStatus.values.byName(gr.status));
        });
        return g.termAverage(entries);
      }).toList();
      return ResultRow(s, avgs, g.yearAverage(avgs));
    }).toList();
  }
}

Stream<void> _merge(Stream<void> a, Stream<void> b) async* {
  final controller = StreamController<void>();
  final subs = [
    a.listen(controller.add, onError: controller.addError),
    b.listen(controller.add, onError: controller.addError),
  ];
  controller.onCancel = () {
    for (final s in subs) {
      s.cancel();
    }
  };
  yield* controller.stream;
}
