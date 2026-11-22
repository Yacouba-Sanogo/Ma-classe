import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'database.dart';
import 'repository.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final repositoryProvider =
    Provider<Repository>((ref) => Repository(ref.watch(databaseProvider)));

final activeYearProvider = StreamProvider<AcademicYear?>(
    (ref) => ref.watch(repositoryProvider).watchActiveYear());

final yearsProvider = StreamProvider<List<AcademicYear>>(
    (ref) => ref.watch(repositoryProvider).watchYears());

final termsProvider = StreamProvider.family<List<SchoolTerm>, String>(
    (ref, yearId) => ref.watch(repositoryProvider).watchTerms(yearId));

final classroomsProvider = StreamProvider<List<Classroom>>(
    (ref) => ref.watch(repositoryProvider).watchClassrooms());

final archivedClassroomsProvider = StreamProvider<List<Classroom>>((ref) =>
    ref.watch(repositoryProvider).watchClassrooms(archived: true));

final classroomProvider = StreamProvider.family<Classroom?, String>(
    (ref, id) => ref.watch(repositoryProvider).watchClassroom(id));

final subjectsProvider = StreamProvider<List<Subject>>(
    (ref) => ref.watch(repositoryProvider).watchSubjects());

typedef ClassYear = ({String classroomId, String yearId});

final enrolledProvider = StreamProvider.family<List<StudentRow>, ClassYear>(
    (ref, k) => ref
        .watch(repositoryProvider)
        .watchEnrolled(k.classroomId, k.yearId));

final assignmentsProvider =
    StreamProvider.family<List<AssignmentRow>, ClassYear>((ref, k) => ref
        .watch(repositoryProvider)
        .watchAssignments(k.classroomId, k.yearId));

final assignmentProvider = FutureProvider.family<AssignmentRow?, String>(
    (ref, id) => ref.watch(repositoryProvider).getAssignment(id));

final sessionsProvider =
    StreamProvider.family<List<AttendanceSession>, String>(
        (ref, id) => ref.watch(repositoryProvider).watchSessions(id));

final sessionProvider = StreamProvider.family<AttendanceSession?, String>(
    (ref, id) => ref.watch(repositoryProvider).watchSession(id));

final attendanceProvider = StreamProvider.family<List<AttendanceRow>, String>(
    (ref, id) => ref.watch(repositoryProvider).watchAttendance(id));

final evaluationsProvider = StreamProvider.family<List<Evaluation>, String>(
    (ref, id) => ref.watch(repositoryProvider).watchEvaluations(id));

final evaluationProvider = StreamProvider.family<Evaluation?, String>(
    (ref, id) => ref.watch(repositoryProvider).watchEvaluation(id));

final gradeSheetProvider = StreamProvider.family<List<GradeRow>, String>(
    (ref, id) => ref.watch(repositoryProvider).watchGradeSheet(id));

/// Résultats recalculés à chaque changement de notes ou d'évaluations.
final resultsProvider =
    StreamProvider.family<List<ResultRow>, String>((ref, id) async* {
  final repo = ref.watch(repositoryProvider);
  final db = repo.db;
  final trigger = db.customSelect('SELECT 1', readsFrom: {
    db.grades,
    db.evaluations,
    db.enrollments,
    db.students,
  }).watch();
  await for (final _ in trigger) {
    yield await repo.results(id);
  }
});
