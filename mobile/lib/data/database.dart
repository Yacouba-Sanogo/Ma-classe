import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

/// Colonnes communes, préparées pour la synchronisation (RM-034 : suppression logique).
mixin SyncColumns on Table {
  TextColumn get id => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class AcademicYears extends Table with SyncColumns {
  TextColumn get label => text()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  // 'active' | 'closed'
  TextColumn get status => text().withDefault(const Constant('active'))();
}

class SchoolTerms extends Table with SyncColumns {
  TextColumn get academicYearId => text().references(AcademicYears, #id)();
  IntColumn get number => integer()();
  TextColumn get name => text()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();

  @override
  List<Set<Column>> get uniqueKeys => [
        {academicYearId, number}
      ];
}

class Classrooms extends Table with SyncColumns {
  TextColumn get name => text()();
  TextColumn get level => text().withDefault(const Constant(''))();
  TextColumn get description => text().withDefault(const Constant(''))();
  DateTimeColumn get archivedAt => dateTime().nullable()();
}

class Students extends Table with SyncColumns {
  TextColumn get matricule => text().withDefault(const Constant(''))();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  DateTimeColumn get birthDate => dateTime().nullable()();
  TextColumn get gender => text().withDefault(const Constant(''))();
  DateTimeColumn get archivedAt => dateTime().nullable()();
}

class Enrollments extends Table with SyncColumns {
  TextColumn get studentId => text().references(Students, #id)();
  TextColumn get classroomId => text().references(Classrooms, #id)();
  TextColumn get academicYearId => text().references(AcademicYears, #id)();
  DateTimeColumn get enrollmentDate => dateTime()();
  DateTimeColumn get exitDate => dateTime().nullable()();
  // 'active' | 'left'
  TextColumn get status => text().withDefault(const Constant('active'))();
}

class Subjects extends Table with SyncColumns {
  TextColumn get name => text()();
  TextColumn get description => text().withDefault(const Constant(''))();
}

class TeachingAssignments extends Table with SyncColumns {
  TextColumn get classroomId => text().references(Classrooms, #id)();
  TextColumn get subjectId => text().references(Subjects, #id)();
  TextColumn get academicYearId => text().references(AcademicYears, #id)();
  RealColumn get coefficient => real().withDefault(const Constant(1))();

  @override
  List<Set<Column>> get uniqueKeys => [
        {classroomId, subjectId, academicYearId}
      ];
}

class AttendanceSessions extends Table with SyncColumns {
  TextColumn get teachingAssignmentId =>
      text().references(TeachingAssignments, #id)();
  TextColumn get schoolTermId => text().references(SchoolTerms, #id)();
  DateTimeColumn get date => dateTime()();
  TextColumn get topic => text().withDefault(const Constant(''))();
  // 'draft' | 'validated' (RM-026)
  TextColumn get status => text().withDefault(const Constant('draft'))();
}

class AttendanceRecords extends Table with SyncColumns {
  TextColumn get attendanceSessionId =>
      text().references(AttendanceSessions, #id)();
  TextColumn get studentId => text().references(Students, #id)();
  // 'present' | 'absent' | 'late' | 'excused' (RM-024)
  TextColumn get status => text().withDefault(const Constant('present'))();
  TextColumn get comment => text().withDefault(const Constant(''))();

  @override
  List<Set<Column>> get uniqueKeys => [
        {attendanceSessionId, studentId} // RM-023
      ];
}

class Evaluations extends Table with SyncColumns {
  TextColumn get teachingAssignmentId =>
      text().references(TeachingAssignments, #id)();
  TextColumn get schoolTermId => text().references(SchoolTerms, #id)();
  TextColumn get title => text()();
  TextColumn get type => text().withDefault(const Constant('quiz'))();
  // ignore: recursive_getters
  RealColumn get maxScore => real().check(maxScore.isBiggerThanValue(0))(); // RM-013
  // ignore: recursive_getters
  RealColumn get coefficient => real().check(coefficient.isBiggerThanValue(0))(); // RM-014
  DateTimeColumn get evaluationDate => dateTime()();
}

class Grades extends Table with SyncColumns {
  TextColumn get evaluationId => text().references(Evaluations, #id)();
  TextColumn get studentId => text().references(Students, #id)();
  RealColumn get score => real().nullable()();
  TextColumn get comment => text().withDefault(const Constant(''))();
  // 'pending' | 'graded' | 'exempt' (RM-018)
  TextColumn get status => text().withDefault(const Constant('pending'))();

  @override
  List<Set<Column>> get uniqueKeys => [
        {evaluationId, studentId} // RM-017
      ];
}

/// Historique des corrections de notes (RM-020).
class GradeAudits extends Table with SyncColumns {
  TextColumn get gradeId => text().references(Grades, #id)();
  RealColumn get oldScore => real().nullable()();
  RealColumn get newScore => real().nullable()();
  TextColumn get oldStatus => text()();
  TextColumn get newStatus => text()();
}

@DriftDatabase(tables: [
  AcademicYears,
  SchoolTerms,
  Classrooms,
  Students,
  Enrollments,
  Subjects,
  TeachingAssignments,
  AttendanceSessions,
  AttendanceRecords,
  Evaluations,
  Grades,
  GradeAudits,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_open());

  /// Base en mémoire pour les tests.
  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}

QueryExecutor _open() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'mon_assistant_prof.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
