import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/providers.dart';
import '../../data/repository.dart';

class YearFormScreen extends ConsumerStatefulWidget {
  const YearFormScreen({super.key});
  @override
  ConsumerState<YearFormScreen> createState() => _YearFormScreenState();
}

class _YearFormScreenState extends ConsumerState<YearFormScreen> {
  late final TextEditingController _label;
  late DateTimeRange _year;
  late List<DateTimeRange> _terms;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    final y = now.month >= 8 ? now.year : now.year - 1;
    _label = TextEditingController(text: '$y-${y + 1}');
    _year = DateTimeRange(start: DateTime(y, 9, 1), end: DateTime(y + 1, 6, 30));
    _terms = [
      DateTimeRange(start: DateTime(y, 9, 1), end: DateTime(y, 12, 15)),
      DateTimeRange(start: DateTime(y + 1, 1, 5), end: DateTime(y + 1, 3, 31)),
      DateTimeRange(start: DateTime(y + 1, 4, 10), end: DateTime(y + 1, 6, 30)),
    ];
  }

  Future<DateTimeRange?> _pick(DateTimeRange initial, DateTimeRange bounds) =>
      showDateRangePicker(
        context: context,
        initialDateRange: initial,
        firstDate: bounds.start.subtract(const Duration(days: 400)),
        lastDate: bounds.end.add(const Duration(days: 400)),
        locale: const Locale('fr'),
      );

  Future<void> _save() async {
    final ok = await guard(context, () async {
      await ref.read(repositoryProvider).createAcademicYear(
            label: _label.text,
            start: _year.start,
            end: _year.end,
            terms: [for (final t in _terms) TermInput(t.start, t.end)],
          );
    });
    if (ok && mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    String r(DateTimeRange d) => '${fmtDate(d.start)} → ${fmtDate(d.end)}';
    return Scaffold(
      appBar: AppBar(title: const Text('Nouvelle année scolaire')),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        TextField(
            controller: _label,
            decoration: const InputDecoration(labelText: 'Libellé (ex. 2026-2027)')),
        const SizedBox(height: 16),
        ListTile(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(8)),
          leading: const Icon(Icons.date_range),
          title: const Text("Dates de l'année"),
          subtitle: Text(r(_year)),
          onTap: () async {
            final v = await _pick(_year, _year);
            if (v != null) setState(() => _year = v);
          },
        ),
        const SizedBox(height: 16),
        Text('Trimestres', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        for (var i = 0; i < 3; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
                  borderRadius: BorderRadius.circular(8)),
              leading: CircleAvatar(child: Text('${i + 1}')),
              title: Text('${['Premier', 'Deuxième', 'Troisième'][i]} trimestre'),
              subtitle: Text(r(_terms[i])),
              onTap: () async {
                final v = await _pick(_terms[i], _year);
                if (v != null) setState(() => _terms[i] = v);
              },
            ),
          ),
        const SizedBox(height: 16),
        FilledButton.icon(
            onPressed: _save,
            icon: const Icon(Icons.check),
            label: const Text("Créer l'année")),
      ]),
    );
  }
}
