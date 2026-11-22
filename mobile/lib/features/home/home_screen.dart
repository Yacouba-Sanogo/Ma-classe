import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final year = ref.watch(activeYearProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('MonAssistant Prof')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        year.when(
          loading: () => const LinearProgressIndicator(),
          error: (e, _) => Text('$e'),
          data: (y) => y == null
              ? Card(
                  child: ListTile(
                    leading: const Icon(Icons.event_available),
                    title: const Text('Commencez par créer une année scolaire'),
                    subtitle: const Text('Trois trimestres seront générés.'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => context.push('/years/new'),
                  ),
                )
              : _YearCard(yearId: y.id, label: y.label, start: y.startDate, end: y.endDate),
        ),
        const SizedBox(height: 16),
        _NavTile(Icons.groups, 'Mes classes', 'Élèves, matières, appel, notes', '/classes'),
        _NavTile(Icons.menu_book, 'Mes matières', 'Matières enseignées', '/subjects'),
        _NavTile(Icons.calendar_month, 'Années scolaires', 'Créer, activer, consulter', '/years'),
      ]),
    );
  }
}

class _YearCard extends ConsumerWidget {
  const _YearCard(
      {required this.yearId,
      required this.label,
      required this.start,
      required this.end});
  final String yearId, label;
  final DateTime start, end;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final terms = ref.watch(termsProvider(yearId)).value ?? [];
    final now = DateTime.now();
    return Card(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Année $label', style: Theme.of(context).textTheme.titleLarge),
          Text('${fmtDate(start)} → ${fmtDate(end)}'),
          const SizedBox(height: 8),
          for (final t in terms)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Row(children: [
                Icon(
                    !now.isBefore(t.startDate) && !now.isAfter(t.endDate)
                        ? Icons.radio_button_checked
                        : Icons.radio_button_unchecked,
                    size: 18),
                const SizedBox(width: 8),
                Expanded(child: Text('${t.name} : ${fmtDate(t.startDate)} → ${fmtDate(t.endDate)}')),
              ]),
            ),
        ]),
      ),
    );
  }
}

class _NavTile extends StatelessWidget {
  const _NavTile(this.icon, this.title, this.subtitle, this.path);
  final IconData icon;
  final String title, subtitle, path;
  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => context.push(path),
        ),
      );
}
