import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../core/ui.dart';
import '../../data/database.dart';
import '../../data/providers.dart';
import '../../data/repository.dart';

class ClassDetailScreen extends ConsumerWidget {
  const ClassDetailScreen({super.key, required this.classroomId});
  final String classroomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classroom = ref.watch(classroomProvider(classroomId)).value;
    final year = ref.watch(activeYearProvider);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(classroom?.name ?? 'Classe'),
          bottom: const TabBar(tabs: [Tab(text: 'Élèves'), Tab(text: 'Matières')]),
        ),
        body: year.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text('$e')),
          data: (y) => y == null
              ? const EmptyState(
                  "Aucune année scolaire active.\nCréez-en une depuis l'accueil.",
                  icon: Icons.event_busy)
              : TabBarView(children: [
                  _StudentsTab(classroomId: classroomId, yearId: y.id),
                  _SubjectsTab(classroomId: classroomId, yearId: y.id),
                ]),
        ),
      ),
    );
  }
}

class _StudentsTab extends ConsumerWidget {
  const _StudentsTab({required this.classroomId, required this.yearId});
  final String classroomId, yearId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final students = ref.watch(enrolledProvider((classroomId: classroomId, yearId: yearId)));
    final repo = ref.read(repositoryProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.person_add),
        label: const Text('Ajouter un élève'),
        onPressed: () async {
          final r = await _studentDialog(context);
          if (r != null && context.mounted) {
            await guard(
                context,
                () => repo.addStudent(
                    firstName: r.first,
                    lastName: r.last,
                    matricule: r.matricule,
                    gender: r.gender,
                    classroomId: classroomId,
                    yearId: yearId));
          }
        },
      ),
      body: students.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (list) => list.isEmpty
            ? const EmptyState('Aucun élève dans cette classe.', icon: Icons.person_outline)
            : ListView(padding: const EdgeInsets.fromLTRB(16, 8, 16, 96), children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text('${list.length} élève(s)')),
                for (final r in list)
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                          child: Text(r.student.lastName.characters.first)),
                      title: Text('${r.student.lastName} ${r.student.firstName}'),
                      subtitle:
                          r.student.matricule.isEmpty ? null : Text('Matricule ${r.student.matricule}'),
                      trailing: PopupMenuButton<String>(
                        onSelected: (v) => _action(context, ref, v, r.student),
                        itemBuilder: (_) => const [
                          PopupMenuItem(value: 'edit', child: Text('Modifier')),
                          PopupMenuItem(value: 'move', child: Text('Changer de classe')),
                          PopupMenuItem(value: 'archive', child: Text('Archiver')),
                        ],
                      ),
                    ),
                  ),
              ]),
      ),
    );
  }

  Future<void> _action(BuildContext context, WidgetRef ref, String v, Student s) async {
    final repo = ref.read(repositoryProvider);
    if (v == 'edit') {
      final r = await _studentDialog(context, student: s);
      if (r != null && context.mounted) {
        await guard(
            context,
            () => repo.updateStudent(s,
                firstName: r.first,
                lastName: r.last,
                matricule: r.matricule,
                gender: r.gender));
      }
    } else if (v == 'archive') {
      final ok = await showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text("Archiver l'élève ?"),
          content: const Text("Son historique (notes, présences) est conservé."),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Annuler')),
            FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Archiver')),
          ],
        ),
      );
      if (ok == true) await repo.archiveStudent(s.id);
    } else if (v == 'move') {
      final classes = (ref.read(classroomsProvider).value ?? [])
          .where((c) => c.id != classroomId)
          .toList();
      if (!context.mounted) return;
      final target = await showDialog<Classroom>(
        context: context,
        builder: (ctx) => SimpleDialog(
          title: const Text('Nouvelle classe'),
          children: [
            if (classes.isEmpty)
              const Padding(padding: EdgeInsets.all(16), child: Text('Aucune autre classe.')),
            for (final c in classes)
              SimpleDialogOption(onPressed: () => Navigator.pop(ctx, c), child: Text(c.name)),
          ],
        ),
      );
      if (target != null && context.mounted) {
        await guard(context, () => repo.changeClass(s.id, target.id, yearId));
      }
    }
  }
}

typedef _StudentInput = ({String first, String last, String matricule, String gender});

Future<_StudentInput?> _studentDialog(BuildContext context, {Student? student}) {
  final first = TextEditingController(text: student?.firstName);
  final last = TextEditingController(text: student?.lastName);
  final mat = TextEditingController(text: student?.matricule);
  var gender = student?.gender ?? '';
  return showDialog<_StudentInput>(
    context: context,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setState) => AlertDialog(
        title: Text(student == null ? 'Nouvel élève' : "Modifier l'élève"),
        content: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(
                controller: last,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: const InputDecoration(labelText: 'Nom')),
            const SizedBox(height: 12),
            TextField(
                controller: first,
                textCapitalization: TextCapitalization.words,
                decoration: const InputDecoration(labelText: 'Prénom')),
            const SizedBox(height: 12),
            TextField(
                controller: mat,
                decoration: const InputDecoration(labelText: 'Matricule (facultatif)')),
            const SizedBox(height: 12),
            SegmentedButton<String>(
              emptySelectionAllowed: true,
              segments: const [
                ButtonSegment(value: 'F', label: Text('Fille')),
                ButtonSegment(value: 'M', label: Text('Garçon')),
              ],
              selected: gender.isEmpty ? {} : {gender},
              onSelectionChanged: (v) => setState(() => gender = v.isEmpty ? '' : v.first),
            ),
          ]),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Annuler')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx,
                  (first: first.text, last: last.text, matricule: mat.text, gender: gender)),
              child: const Text('Enregistrer')),
        ],
      ),
    ),
  );
}

class _SubjectsTab extends ConsumerWidget {
  const _SubjectsTab({required this.classroomId, required this.yearId});
  final String classroomId, yearId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(assignmentsProvider((classroomId: classroomId, yearId: yearId)));
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.add),
        label: const Text('Associer une matière'),
        onPressed: () => _assign(context, ref),
      ),
      body: list.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('$e')),
        data: (rows) => rows.isEmpty
            ? const EmptyState(
                'Associez une matière pour faire l’appel et saisir des notes.',
                icon: Icons.menu_book_outlined)
            : ListView(padding: const EdgeInsets.fromLTRB(16, 8, 16, 96), children: [
                for (final r in rows)
                  Card(
                    child: ListTile(
                      leading: const Icon(Icons.menu_book),
                      title: Text(r.subject.name),
                      subtitle: Text('Coefficient ${fmtNum(r.assignment.coefficient, digits: 1)}'),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => context.push('/assignments/${r.assignment.id}'),
                    ),
                  ),
              ]),
      ),
    );
  }

  Future<void> _assign(BuildContext context, WidgetRef ref) async {
    final repo = ref.read(repositoryProvider);
    final subjects = ref.read(subjectsProvider).value ?? [];
    final coef = TextEditingController(text: '1');
    final newName = TextEditingController();
    String? selected = subjects.isEmpty ? null : subjects.first.id;
    await showDialog<void>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setState) => AlertDialog(
          title: const Text('Associer une matière'),
          content: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              if (subjects.isNotEmpty)
                DropdownButtonFormField<String>(
                  initialValue: selected,
                  decoration: const InputDecoration(labelText: 'Matière existante'),
                  items: [
                    for (final s in subjects)
                      DropdownMenuItem(value: s.id, child: Text(s.name))
                  ],
                  onChanged: (v) => setState(() => selected = v),
                ),
              const SizedBox(height: 12),
              TextField(
                  controller: newName,
                  decoration: const InputDecoration(
                      labelText: 'ou nouvelle matière', hintText: 'laisser vide pour utiliser la liste')),
              const SizedBox(height: 12),
              TextField(
                  controller: coef,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(labelText: 'Coefficient')),
            ]),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Annuler')),
            FilledButton(
              onPressed: () async {
                final ok = await guard(ctx, () async {
                  final subjectId = newName.text.trim().isNotEmpty
                      ? await repo.createSubject(newName.text)
                      : selected;
                  if (subjectId == null) throw BusinessException('Choisissez une matière.');
                  await repo.assignSubject(
                      classroomId: classroomId,
                      subjectId: subjectId,
                      yearId: yearId,
                      coefficient: parseNum(coef.text) ?? 0);
                });
                if (ok && ctx.mounted) Navigator.pop(ctx);
              },
              child: const Text('Associer'),
            ),
          ],
        ),
      ),
    );
  }
}
