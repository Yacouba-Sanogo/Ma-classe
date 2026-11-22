import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mon_assistant_prof/data/database.dart';
import 'package:mon_assistant_prof/data/repository.dart';

void main() {
  late AppDatabase db;
  late Repository repo;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    repo = Repository(db);
  });
  tearDown(() => db.close());

  Future<String> makeYear() => repo.createAcademicYear(
        label: '2026-2027',
        start: DateTime(2026, 9, 1),
        end: DateTime(2027, 6, 30),
        terms: [
          TermInput(DateTime(2026, 9, 1), DateTime(2026, 12, 15)),
          TermInput(DateTime(2027, 1, 5), DateTime(2027, 3, 31)),
          TermInput(DateTime(2027, 4, 10), DateTime(2027, 6, 30)),
        ],
      );

  test('création atomique : année + exactement 3 trimestres', () async {
    final y = await makeYear();
    final terms = await repo.watchTerms(y).first;
    expect(terms.map((t) => t.number), [1, 2, 3]);
  });

  test('trimestres chevauchants ou hors année refusés, rien créé', () async {
    await expectLater(
        repo.createAcademicYear(
          label: 'X',
          start: DateTime(2026, 9, 1),
          end: DateTime(2027, 6, 30),
          terms: [
            TermInput(DateTime(2026, 9, 1), DateTime(2026, 12, 15)),
            TermInput(DateTime(2026, 12, 1), DateTime(2027, 3, 31)),
            TermInput(DateTime(2027, 4, 10), DateTime(2027, 6, 30)),
          ],
        ),
        throwsA(isA<BusinessException>()));
    expect(await repo.watchYears().first, isEmpty);
  });

  test('une seule année active (RM-005)', () async {
    final first = await makeYear();
    await repo.createAcademicYear(
      label: '2027-2028',
      start: DateTime(2027, 9, 1),
      end: DateTime(2028, 6, 30),
      terms: [
        TermInput(DateTime(2027, 9, 1), DateTime(2027, 12, 15)),
        TermInput(DateTime(2028, 1, 5), DateTime(2028, 3, 31)),
        TermInput(DateTime(2028, 4, 10), DateTime(2028, 6, 30)),
      ],
    );
    final years = await repo.watchYears().first;
    expect(years.where((y) => y.status == 'active').length, 1);
    expect(years.firstWhere((y) => y.id == first).status, 'closed');
  });

  test('parcours complet : élèves, appel, évaluation, notes, moyennes', () async {
    final y = await makeYear();
    final terms = await repo.watchTerms(y).first;
    final cls = await repo.createClassroom('6e A');
    final subj = await repo.createSubject('Maths');
    final asg = await repo.assignSubject(
        classroomId: cls, subjectId: subj, yearId: y);
    final s1 = await repo.addStudent(
        firstName: 'Awa', lastName: 'Traoré', classroomId: cls, yearId: y);
    final s2 = await repo.addStudent(
        firstName: 'Ali', lastName: 'Diallo', classroomId: cls, yearId: y);

    // Appel
    final sess = await repo.createSession(
        assignmentId: asg, termId: terms[0].id, date: DateTime(2026, 10, 1));
    var att = await repo.watchAttendance(sess).first;
    expect(att.length, 2);
    await repo.setAttendance(att.first.record.id, 'absent');
    await repo.validateSession(sess);
    final stats = await repo.attendanceStats(asg);
    expect(stats.fold<int>(0, (a, s) => a + s.absent), 1);

    // Évaluation sur 10, coef 2
    final ev = await repo.createEvaluation(
        assignmentId: asg,
        termId: terms[0].id,
        title: 'Interro 1',
        type: 'quiz',
        maxScore: 10,
        coefficient: 2,
        date: DateTime(2026, 10, 5));
    await repo.setGrade(
        evaluationId: ev, studentId: s1, score: 8, status: 'graded');
    await repo.setGrade(evaluationId: ev, studentId: s2, status: 'exempt');
    await expectLater(
        repo.setGrade(
            evaluationId: ev, studentId: s1, score: 11, status: 'graded'),
        throwsA(isA<BusinessException>()));

    var res = await repo.results(asg);
    final awa = res.firstWhere((r) => r.student.id == s1);
    expect(awa.termAverages[0], closeTo(16, 1e-9));
    expect(awa.termAverages[1], isNull);
    expect(awa.year.isComplete, isFalse);
    expect(res.firstWhere((r) => r.student.id == s2).termAverages[0], isNull);

    // Correction tracée (RM-020)
    await repo.setGrade(
        evaluationId: ev, studentId: s1, score: 9, status: 'graded');
    final grade = (await db.select(db.grades).get()).first;
    final hist = await repo.gradeHistory(grade.id);
    expect(hist.single.oldScore, 8);
    expect(hist.single.newScore, 9);
  });

  test('inscription : une seule active par année, changement de classe', () async {
    final y = await makeYear();
    final a = await repo.createClassroom('6e A');
    final b = await repo.createClassroom('6e B');
    final s = await repo.addStudent(
        firstName: 'Awa', lastName: 'Traoré', classroomId: a, yearId: y);
    await repo.changeClass(s, b, y);
    expect(await repo.watchEnrolled(a, y).first, isEmpty);
    expect((await repo.watchEnrolled(b, y).first).length, 1);
    // historique conservé : 2 inscriptions, 1 active
    expect((await db.select(db.enrollments).get()).length, 2);
  });
}
