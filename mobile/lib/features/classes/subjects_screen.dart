import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/providers.dart';

class SubjectsScreen extends ConsumerWidget {
  const SubjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subjects = ref.watch(subjectsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Mes matières')),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Nouvelle matière'),
        onPressed: () async {
          final name = await askText(context, 'Nouvelle matière', label: 'Nom (ex. Mathématiques)');
          if (name != null && context.mounted) {
            await guard(context, () => ref.read(repositoryProvider).createSubject(name));
          }
        },
      ),
      body: subjects.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) => list.isEmpty
            ? const EmptyState('Aucune matière.', icon: Icons.menu_book_outlined)
            : ListView(padding: const EdgeInsets.all(16), children: [
                for (final s in list)
                  Card(child: ListTile(leading: const Icon(Icons.menu_book), title: Text(s.name))),
              ]),
      ),
    );
  }
}
