import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

final dateFmt = DateFormat('dd/MM/yyyy');

String fmtDate(DateTime d) => dateFmt.format(d);
String fmtNum(double? v, {int digits = 2}) =>
    v == null ? '—' : v.toStringAsFixed(digits).replaceAll('.', ',');

double? parseNum(String s) =>
    double.tryParse(s.trim().replaceAll(',', '.'));

void showError(BuildContext context, Object e) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text(e.toString())));
}

/// Exécute [action] et affiche l'erreur métier éventuelle.
Future<bool> guard(BuildContext context, Future<void> Function() action) async {
  try {
    await action();
    return true;
  } catch (e) {
    if (context.mounted) showError(context, e);
    return false;
  }
}

Future<String?> askText(BuildContext context, String title,
    {String label = 'Nom', String initial = ''}) {
  final c = TextEditingController(text: initial);
  return showDialog<String>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: TextField(
          controller: c,
          autofocus: true,
          decoration: InputDecoration(labelText: label),
          textCapitalization: TextCapitalization.sentences),
      actions: [
        TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Annuler')),
        FilledButton(
            onPressed: () => Navigator.pop(ctx, c.text), child: const Text('Valider')),
      ],
    ),
  );
}

class EmptyState extends StatelessWidget {
  const EmptyState(this.message, {super.key, this.icon = Icons.inbox_outlined});
  final String message;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(icon, size: 56, color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: 12),
            Text(message, textAlign: TextAlign.center),
          ]),
        ),
      );
}
