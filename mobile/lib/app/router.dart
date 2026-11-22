import 'package:go_router/go_router.dart';

import '../features/assignment/assignment_screen.dart';
import '../features/attendance/attendance_screen.dart';
import '../features/classes/class_detail_screen.dart';
import '../features/classes/classes_screen.dart';
import '../features/classes/subjects_screen.dart';
import '../features/evaluation/evaluation_screen.dart';
import '../features/home/home_screen.dart';
import '../features/years/year_form_screen.dart';
import '../features/years/years_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (_, _) => const HomeScreen(), routes: [
      GoRoute(path: 'years', builder: (_, _) => const YearsScreen(), routes: [
        GoRoute(path: 'new', builder: (_, _) => const YearFormScreen()),
      ]),
      GoRoute(path: 'subjects', builder: (_, _) => const SubjectsScreen()),
      GoRoute(path: 'classes', builder: (_, _) => const ClassesScreen(), routes: [
        GoRoute(
            path: ':id',
            builder: (_, s) => ClassDetailScreen(classroomId: s.pathParameters['id']!)),
      ]),
      GoRoute(
          path: 'assignments/:id',
          builder: (_, s) => AssignmentScreen(assignmentId: s.pathParameters['id']!),
          routes: [
            GoRoute(
                path: 'attendance/:sid',
                builder: (_, s) => AttendanceScreen(sessionId: s.pathParameters['sid']!)),
            GoRoute(
                path: 'evaluations/:eid',
                builder: (_, s) => EvaluationScreen(evaluationId: s.pathParameters['eid']!)),
          ]),
    ]),
  ],
);
