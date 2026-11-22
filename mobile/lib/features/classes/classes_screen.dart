import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/providers.dart';

class ClassesScreen extends ConsumerWidget {
  const ClassesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(classroomsProvider);
    final archived = ref.watch(archivedClassroomsProvider).value ?? [];
    final repo = ref.read(repositoryProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Mes classes')),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Nouvelle classe'),
        onPressed: () async {
          final name = await askText(context, 'Nouvelle classe', label: 'Nom (ex. 6e A)');
          if (name != null && context.mounted) {
            await guard(context, () => repo.createClassroom(name));
          }
        },
      ),
      body: classes.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) => ListView(padding: const EdgeInsets.all(16), children: [
          if (list.isEmpty) const EmptyState('Créez votre première classe.'),
          for (final c in list)
            Card(
              child: ListTile(
                leading: const Icon(Icons.groups),
                title: Text(c.name),
                trailing: PopupMenuButton<String>(
                  onSelected: (_) => repo.archiveClassroom(c.id),
                  itemBuilder: (_) =>
                      [const PopupMenuItem(value: 'a', child: Text('Archiver'))],
                ),
                onTap: () => context.push('/classes/${c.id}'),
              ),
            ),
          if (archived.isNotEmpty) ...[
            const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 4),
                child: Text('Archivées')),
            for (final c in archived)
              Card(
                child: ListTile(
                  leading: const Icon(Icons.archive_outlined),
                  title: Text(c.name),
                  trailing: TextButton(
                      onPressed: () => repo.archiveClassroom(c.id, archive: false),
                      child: const Text('Restaurer')),
                  onTap: () => context.push('/classes/${c.id}'),
                ),
              ),
          ],
        ]),
      ),
    );
  }
}
