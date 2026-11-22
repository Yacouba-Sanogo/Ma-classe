import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/providers.dart';

const _statuses = {
  'present': ('Présent', Icons.check_circle, Colors.green),
  'absent': ('Absent', Icons.cancel, Colors.red),
  'late': ('Retard', Icons.schedule, Colors.orange),
  'excused': ('Justifié', Icons.assignment_turned_in, Colors.blue),
};

class AttendanceScreen extends ConsumerWidget {
  const AttendanceScreen({super.key, required this.sessionId});
  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider(sessionId)).value;
    final rows = ref.watch(attendanceProvider(sessionId));
    final repo = ref.read(repositoryProvider);
    final validated = session?.status == 'validated';
    return Scaffold(
      appBar: AppBar(
        title: Text(session == null ? 'Appel' : 'Appel du ${fmtDate(session.date)}'),
        actions: [
          if (!validated)
            TextButton.icon(
              icon: const Icon(Icons.check),
              label: const Text('Valider'),
              onPressed: () async {
                await repo.validateSession(sessionId);
                if (context.mounted) context.pop();
              },
            ),
        ],
      ),
      body: rows.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) {
          if (list.isEmpty) {
            return const EmptyState('Aucun élève inscrit dans cette classe.');
          }
          final counts = <String, int>{};
          for (final r in list) {
            counts[r.record.status] = (counts[r.record.status] ?? 0) + 1;
          }
          return ListView(padding: const EdgeInsets.all(16), children: [
            if (validated)
              const Card(
                  child: ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text('Appel validé'),
                      subtitle: Text('Vous pouvez encore corriger un statut.'))),
            Wrap(spacing: 8, children: [
              for (final e in _statuses.entries)
                Chip(
                  avatar: Icon(e.value.$2, size: 18, color: e.value.$3),
                  label: Text('${e.value.$1} ${counts[e.key] ?? 0}'),
                ),
            ]),
            const SizedBox(height: 8),
            for (final r in list)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('${r.student.lastName} ${r.student.firstName}',
                        style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 8),
                    SegmentedButton<String>(
                      showSelectedIcon: false,
                      segments: [
                        for (final e in _statuses.entries)
                          ButtonSegment(
                              value: e.key,
                              icon: Icon(e.value.$2, color: e.value.$3),
                              tooltip: e.value.$1),
                      ],
                      selected: {r.record.status},
                      onSelectionChanged: (v) =>
                          guard(context, () => repo.setAttendance(r.record.id, v.first)),
                    ),
                  ]),
                ),
              ),
          ]);
        },
      ),
    );
  }
}
