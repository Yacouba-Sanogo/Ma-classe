import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/database.dart';
import '../../data/providers.dart';
import '../../data/repository.dart';

class EvaluationScreen extends ConsumerWidget {
  const EvaluationScreen({super.key, required this.evaluationId});
  final String evaluationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ev = ref.watch(evaluationProvider(evaluationId)).value;
    final sheet = ref.watch(gradeSheetProvider(evaluationId));
    return Scaffold(
      appBar: AppBar(title: Text(ev?.title ?? 'Notes')),
      body: ev == null
          ? const Center(child: CircularProgressIndicator())
          : sheet.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('$e')),
              data: (rows) {
                if (rows.isEmpty) {
                  return const EmptyState('Aucun élève inscrit dans cette classe.');
                }
                final graded = rows.where((r) => r.grade?.status == 'graded').length;
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(children: [
                      Expanded(
                          child: Text(
                              'Barème : sur ${fmtNum(ev.maxScore, digits: 0)} · coef ${fmtNum(ev.coefficient, digits: 1)}')),
                      Text('$graded / ${rows.length} notés'),
                    ]),
                  ),
                  const Divider(height: 1),
                  Expanded(
                    child: ListView.separated(
                      itemCount: rows.length,
                      separatorBuilder: (_, _) => const Divider(height: 1),
                      itemBuilder: (_, i) => _GradeRowTile(
                          key: ValueKey(rows[i].student.id), ev: ev, row: rows[i]),
                    ),
                  ),
                ]);
              },
            ),
    );
  }
}

class _GradeRowTile extends ConsumerStatefulWidget {
  const _GradeRowTile({super.key, required this.ev, required this.row});
  final Evaluation ev;
  final GradeRow row;
  @override
  ConsumerState<_GradeRowTile> createState() => _GradeRowTileState();
}

class _GradeRowTileState extends ConsumerState<_GradeRowTile> {
  late final TextEditingController _c;
  final _focus = FocusNode();

  String get _status => widget.row.grade?.status ?? 'pending';

  String _text() {
    final s = widget.row.grade?.score;
    if (s == null) return '';
    return s == s.roundToDouble() ? s.toStringAsFixed(0) : s.toString().replaceAll('.', ',');
  }

  @override
  void initState() {
    super.initState();
    _c = TextEditingController(text: _text());
    _focus.addListener(() {
      if (!_focus.hasFocus) _save();
    });
  }

  @override
  void didUpdateWidget(covariant _GradeRowTile old) {
    super.didUpdateWidget(old);
    if (!_focus.hasFocus && old.row.grade?.score != widget.row.grade?.score) {
      _c.text = _text();
    }
  }

  @override
  void dispose() {
    _c.dispose();
    _focus.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_status == 'exempt') return;
    final repo = ref.read(repositoryProvider);
    final txt = _c.text.trim();
    if (txt.isEmpty) {
      if (_status == 'graded') {
        await repo.setGrade(
            evaluationId: widget.ev.id,
            studentId: widget.row.student.id,
            status: 'pending');
      }
      return;
    }
    final v = parseNum(txt);
    if (v == null) {
      showError(context, 'Note invalide.');
      return;
    }
    if (v == widget.row.grade?.score && _status == 'graded') return;
    final ok = await guard(
        context,
        () => repo.setGrade(
            evaluationId: widget.ev.id,
            studentId: widget.row.student.id,
            score: v,
            status: 'graded'));
    if (!ok) _c.text = _text();
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.row.student;
    final exempt = _status == 'exempt';
    return ListTile(
      title: Text('${s.lastName} ${s.firstName}'),
      subtitle: exempt ? const Text('Dispensé') : null,
      trailing: SizedBox(
        width: 150,
        child: Row(children: [
          Expanded(
            child: TextField(
              controller: _c,
              focusNode: _focus,
              enabled: !exempt,
              textAlign: TextAlign.center,
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.,]'))],
              decoration: InputDecoration(
                  isDense: true,
                  hintText: '—',
                  suffixText: '/${fmtNum(widget.ev.maxScore, digits: 0)}'),
              onSubmitted: (_) => _save(),
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (v) async {
              final repo = ref.read(repositoryProvider);
              await guard(context, () async {
                if (v == 'exempt') {
                  _c.clear();
                  await repo.setGrade(
                      evaluationId: widget.ev.id, studentId: s.id, status: 'exempt');
                } else {
                  await repo.setGrade(
                      evaluationId: widget.ev.id, studentId: s.id, status: 'pending');
                }
              });
            },
            itemBuilder: (_) => [
              if (!exempt) const PopupMenuItem(value: 'exempt', child: Text('Dispensé')),
              if (exempt || _status == 'graded')
                const PopupMenuItem(value: 'pending', child: Text('Effacer la note')),
            ],
          ),
        ]),
      ),
    );
  }
}
