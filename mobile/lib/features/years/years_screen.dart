import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/providers.dart';

class YearsScreen extends ConsumerWidget {
  const YearsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final years = ref.watch(yearsProvider);
    final repo = ref.read(repositoryProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Années scolaires')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/years/new'),
        icon: const Icon(Icons.add),
        label: const Text('Nouvelle année'),
      ),
      body: years.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) => list.isEmpty
            ? const EmptyState("Aucune année scolaire.")
            : ListView(padding: const EdgeInsets.all(16), children: [
                for (final y in list)
                  Card(
                    child: ListTile(
                      leading: Icon(y.status == 'active'
                          ? Icons.check_circle
                          : Icons.lock_outline),
                      title: Text(y.label),
                      subtitle: Text(
                          '${fmtDate(y.startDate)} → ${fmtDate(y.endDate)} · ${y.status == 'active' ? 'active' : 'clôturée'}'),
                      trailing: PopupMenuButton<String>(
                        onSelected: (v) => guard(context, () async {
                          if (v == 'activate') await repo.activateYear(y.id);
                          if (v == 'close') await repo.closeYear(y.id);
                        }),
                        itemBuilder: (_) => [
                          if (y.status != 'active')
                            const PopupMenuItem(value: 'activate', child: Text('Activer')),
                          if (y.status == 'active')
                            const PopupMenuItem(value: 'close', child: Text('Clôturer')),
                        ],
                      ),
                    ),
                  ),
              ]),
      ),
    );
  }
}
