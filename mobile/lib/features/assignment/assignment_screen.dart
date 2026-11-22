import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/database.dart';
import '../../data/providers.dart';
import '../../data/repository.dart';
import 'export_service.dart';

const evaluationTypes = {
  'quiz': 'Interrogation',
  'homework': 'Devoir',
  'exam': 'Examen',
  'practical': 'Travaux pratiques',
  'oral': 'Oral',
};

/// Trimestre contenant la date du jour, sinon le dernier commencé, sinon le premier.
SchoolTerm currentTerm(List<SchoolTerm> terms, [DateTime? at]) {
  final d = at ?? DateTime.now();
  for (final t in terms) {
    if (!d.isBefore(t.startDate) && !d.isAfter(t.endDate)) return t;
  }
  final started = terms.where((t) => !d.isBefore(t.startDate)).toList();
  return started.isNotEmpty ? started.last : terms.first;
}

class AssignmentScreen extends ConsumerWidget {
  const AssignmentScreen({super.key, required this.assignmentId});
  final String assignmentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final a = ref.watch(assignmentProvider(assignmentId));
    return a.when(
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (e, _) => Scaffold(body: Center(child: Text('$e'))),
      data: (row) {
        if (row == null) return const Scaffold(body: EmptyState('Introuvable.'));
        final terms = ref.watch(termsProvider(row.assignment.academicYearId)).value ?? [];
        final year = ref.watch(yearsProvider).value?.where((y) => y.id == row.assignment.academicYearId);
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('${row.subject.name} · ${row.classroom.name}'),
              bottom: const TabBar(tabs: [
                Tab(text: 'Appel'),
                Tab(text: 'Évaluations'),
                Tab(text: 'Résultats'),
              ]),
            ),
            body: terms.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : TabBarView(children: [
                    _AttendanceTab(row: row, terms: terms),
                    _EvaluationsTab(row: row, terms: terms),
                    _ResultsTab(row: row, yearLabel: year?.firstOrNull?.label ?? ''),
                  ]),
          ),
        );
      },
    );
  }
}

// ------------------------------------------------------------------ Appel
class _AttendanceTab extends ConsumerWidget {
  const _AttendanceTab({required this.row, required this.terms});
  final AssignmentRow row;
  final List<SchoolTerm> terms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sessions = ref.watch(sessionsProvider(row.assignment.id));
    final id = row.assignment.id;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.fact_check),
        label: const Text("Faire l'appel"),
        onPressed: () async {
          final r = await _newSessionDialog(context, terms);
          if (r == null || !context.mounted) return;
          String? sid;
          final ok = await guard(context, () async {
            sid = await ref.read(repositoryProvider).createSession(
                assignmentId: id, termId: r.term.id, date: r.date, topic: r.topic);
          });
          if (ok && context.mounted) context.push('/assignments/$id/attendance/$sid');
        },
      ),
      body: sessions.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) => ListView(padding: const EdgeInsets.fromLTRB(16, 8, 16, 96), children: [
          OutlinedButton.icon(
            icon: const Icon(Icons.bar_chart),
            label: const Text("Statistiques d'absences"),
            onPressed: () => _stats(context, ref),
          ),
          const SizedBox(height: 8),
          if (list.isEmpty) const EmptyState('Aucun appel pour le moment.', icon: Icons.fact_check_outlined),
          for (final s in list)
            Card(
              child: ListTile(
                leading: Icon(s.status == 'validated' ? Icons.check_circle : Icons.edit_note,
                    color: s.status == 'validated' ? Colors.green : Colors.orange),
                title: Text(fmtDate(s.date)),
                subtitle: Text([
                  s.status == 'validated' ? 'Validé' : 'Brouillon',
                  if (s.topic.isNotEmpty) s.topic,
                ].join(' · ')),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => context.push('/assignments/$id/attendance/${s.id}'),
              ),
            ),
        ]),
      ),
    );
  }

  Future<void> _stats(BuildContext context, WidgetRef ref) async {
    final stats = await ref.read(repositoryProvider).attendanceStats(row.assignment.id);
    if (!context.mounted) return;
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Absences (appels validés)"),
        content: SizedBox(
          width: double.maxFinite,
          child: stats.isEmpty
              ? const Text('Aucun appel validé.')
              : ListView(shrinkWrap: true, children: [
                  for (final s in stats)
                    ListTile(
                      dense: true,
                      title: Text('${s.student.lastName} ${s.student.firstName}'),
                      subtitle: Text(
                          'Absences ${s.absent} · Retards ${s.late} · Justifiées ${s.excused} · sur ${s.total} séances'),
                    ),
                ]),
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Fermer'))],
      ),
    );
  }
}

Future<({DateTime date, String topic, SchoolTerm term})?> _newSessionDialog(
    BuildContext context, List<SchoolTerm> terms) {
  var date = DateTime.now();
  var term = currentTerm(terms);
  final topic = TextEditingController();
  return showDialog(
    context: context,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setState) => AlertDialog(
        title: const Text('Nouvel appel'),
        content: Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.event),
            title: Text(fmtDate(date)),
            onTap: () async {
              final d = await showDatePicker(
                  context: ctx,
                  initialDate: date,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2100),
                  locale: const Locale('fr'));
              if (d != null) {
                setState(() {
                  date = d;
                  term = currentTerm(terms, d);
                });
              }
            },
          ),
          DropdownButtonFormField<SchoolTerm>(
            initialValue: term,
            key: ValueKey(term.id),
            decoration: const InputDecoration(labelText: 'Trimestre'),
            items: [for (final t in terms) DropdownMenuItem(value: t, child: Text(t.name))],
            onChanged: (v) => setState(() => term = v ?? term),
          ),
          const SizedBox(height: 12),
          TextField(
              controller: topic,
              decoration: const InputDecoration(labelText: 'Thème du cours (facultatif)')),
        ]),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Annuler')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, (date: date, topic: topic.text, term: term)),
              child: const Text('Commencer')),
        ],
      ),
    ),
  );
}

// ------------------------------------------------------------ Évaluations
class _EvaluationsTab extends ConsumerWidget {
  const _EvaluationsTab({required this.row, required this.terms});
  final AssignmentRow row;
  final List<SchoolTerm> terms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final evals = ref.watch(evaluationsProvider(row.assignment.id));
    final id = row.assignment.id;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Nouvelle évaluation'),
        onPressed: () async {
          final eid = await _newEvaluation(context, ref, id, terms);
          if (eid != null && context.mounted) context.push('/assignments/$id/evaluations/$eid');
        },
      ),
      body: evals.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) => list.isEmpty
            ? const EmptyState('Aucune évaluation.', icon: Icons.assignment_outlined)
            : ListView(padding: const EdgeInsets.fromLTRB(16, 8, 16, 96), children: [
                for (final e in list)
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.assignment),
                      title: Text(e.title),
                      subtitle: Text(
                          '${evaluationTypes[e.type] ?? e.type} · ${fmtDate(e.evaluationDate)} · '
                          'sur ${fmtNum(e.maxScore, digits: 0)} · coef ${fmtNum(e.coefficient, digits: 1)} · '
                          'T${terms.firstWhere((t) => t.id == e.schoolTermId).number}'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => context.push('/assignments/$id/evaluations/${e.id}'),
                    ),
                  ),
              ]),
      ),
    );
  }
}

Future<String?> _newEvaluation(
    BuildContext context, WidgetRef ref, String assignmentId, List<SchoolTerm> terms) async {
  final title = TextEditingController();
  final max = TextEditingController(text: '20');
  final coef = TextEditingController(text: '1');
  var type = 'quiz';
  var date = DateTime.now();
  var term = currentTerm(terms);
  String? created;
  await showDialog<void>(
    context: context,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setState) => AlertDialog(
        title: const Text('Nouvelle évaluation'),
        content: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(
                controller: title,
                autofocus: true,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(labelText: 'Titre')),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: type,
              decoration: const InputDecoration(labelText: 'Type'),
              items: [
                for (final e in evaluationTypes.entries)
                  DropdownMenuItem(value: e.key, child: Text(e.value))
              ],
              onChanged: (v) => setState(() => type = v ?? type),
            ),
            const SizedBox(height: 12),
            Row(children: [
              Expanded(
                  child: TextField(
                      controller: max,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(labelText: 'Barème (sur)'))),
              const SizedBox(width: 12),
              Expanded(
                  child: TextField(
                      controller: coef,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      decoration: const InputDecoration(labelText: 'Coefficient'))),
            ]),
            const SizedBox(height: 12),
            DropdownButtonFormField<SchoolTerm>(
              initialValue: term,
              key: ValueKey(term.id),
              decoration: const InputDecoration(labelText: 'Trimestre'),
              items: [for (final t in terms) DropdownMenuItem(value: t, child: Text(t.name))],
              onChanged: (v) => setState(() => term = v ?? term),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.event),
              title: Text(fmtDate(date)),
              onTap: () async {
                final d = await showDatePicker(
                    context: ctx,
                    initialDate: date,
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2100),
                    locale: const Locale('fr'));
                if (d != null) {
                  setState(() {
                    date = d;
                    term = currentTerm(terms, d);
                  });
                }
              },
            ),
          ]),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Annuler')),
          FilledButton(
            onPressed: () async {
              final ok = await guard(ctx, () async {
                created = await ref.read(repositoryProvider).createEvaluation(
                    assignmentId: assignmentId,
                    termId: term.id,
                    title: title.text,
                    type: type,
                    maxScore: parseNum(max.text) ?? 0,
                    coefficient: parseNum(coef.text) ?? 0,
                    date: date);
              });
              if (ok && ctx.mounted) Navigator.pop(ctx);
            },
            child: const Text('Créer'),
          ),
        ],
      ),
    ),
  );
  return created;
}

// -------------------------------------------------------------- Résultats
class _ResultsTab extends ConsumerWidget {
  const _ResultsTab({required this.row, required this.yearLabel});
  final AssignmentRow row;
  final String yearLabel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final results = ref.watch(resultsProvider(row.assignment.id));
    return results.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('$e')),
      data: (rows) {
        if (rows.isEmpty) {
          return const EmptyState('Aucun élève inscrit.', icon: Icons.person_outline);
        }
        double? avg(Iterable<double?> v) {
          final x = v.whereType<double>().toList();
          return x.isEmpty ? null : x.reduce((a, b) => a + b) / x.length;
        }

        return ListView(padding: const EdgeInsets.all(16), children: [
          Row(children: [
            Expanded(
                child: FilledButton.tonalIcon(
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('PDF'),
              onPressed: () => guard(context, () => ExportService.sharePdf(row, yearLabel, rows)),
            )),
            const SizedBox(width: 8),
            Expanded(
                child: FilledButton.tonalIcon(
              icon: const Icon(Icons.table_chart),
              label: const Text('Excel'),
              onPressed: () => guard(context, () => ExportService.shareExcel(row, rows)),
            )),
          ]),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Élève')),
                DataColumn(label: Text('T1'), numeric: true),
                DataColumn(label: Text('T2'), numeric: true),
                DataColumn(label: Text('T3'), numeric: true),
                DataColumn(label: Text('Annuelle'), numeric: true),
              ],
              rows: [
                for (final r in rows)
                  DataRow(cells: [
                    DataCell(Text('${r.student.lastName} ${r.student.firstName}')),
                    for (final t in r.termAverages) DataCell(Text(fmtNum(t))),
                    DataCell(Text(
                        r.year.value == null
                            ? '—'
                            : '${fmtNum(r.year.value)}${r.year.isComplete ? '' : '*'}',
                        style: const TextStyle(fontWeight: FontWeight.bold))),
                  ]),
                DataRow(cells: [
                  const DataCell(Text('Classe', style: TextStyle(fontWeight: FontWeight.bold))),
                  for (var i = 0; i < 3; i++)
                    DataCell(Text(fmtNum(avg(rows.map((r) => r.termAverages[i]))))),
                  DataCell(Text(fmtNum(avg(rows.map((r) => r.year.value))))),
                ]),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
                '— : aucune note évaluable. * : moyenne annuelle incomplète (trimestre manquant, jamais compté comme 0).',
                style: TextStyle(fontSize: 12)),
          ),
        ]);
      },
    );
  }
}
