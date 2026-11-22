import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mon_assistant_prof/data/database.dart';
import 'package:mon_assistant_prof/data/providers.dart';
import 'package:mon_assistant_prof/main.dart';

/// Laisse les flux Drift émettre puis avance quelques images (sans attendre
/// la fin des animations de chargement, qui ne s'arrêtent jamais seules).
Future<void> settle(WidgetTester tester) async {
  for (var i = 0; i < 3; i++) {
    await tester.runAsync(() => Future.delayed(const Duration(milliseconds: 120)));
    await tester.pump(const Duration(milliseconds: 400));
  }
}

void main() {
  testWidgets('accueil : invite à créer une année, puis parcours classe/élève',
      (tester) async {
    final db = AppDatabase.forTesting(NativeDatabase.memory());
    addTearDown(() async {
      // Démonte l'arbre puis laisse les minuteurs de flux Drift se vider.
      await tester.pumpWidget(const SizedBox());
      await tester.pump(const Duration(milliseconds: 200));
    });

    await tester.pumpWidget(ProviderScope(
      overrides: [databaseProvider.overrideWithValue(db)],
      child: const MonAssistantProfApp(),
    ));
    await settle(tester);
    expect(find.text('Commencez par créer une année scolaire'), findsOneWidget);

    // Création d'année avec les valeurs par défaut.
    await tester.tap(find.text('Commencez par créer une année scolaire'));
    await settle(tester);
    await tester.tap(find.text("Créer l'année"));
    await settle(tester);
    expect(find.textContaining('Premier trimestre'), findsOneWidget);
    expect(find.textContaining('Troisième trimestre'), findsOneWidget);

    // Classe
    await tester.tap(find.text('Mes classes'));
    await settle(tester);
    await tester.tap(find.text('Nouvelle classe'));
    await settle(tester);
    await tester.enterText(find.byType(TextField), '6e A');
    await tester.tap(find.text('Valider'));
    await settle(tester);
    expect(find.text('6e A'), findsOneWidget);

    // Élève
    await tester.tap(find.text('6e A'));
    await settle(tester);
    await tester.tap(find.text('Ajouter un élève'));
    await settle(tester);
    final fields = find.byType(TextField);
    await tester.enterText(fields.at(0), 'Traoré');
    await tester.enterText(fields.at(1), 'Awa');
    await tester.tap(find.text('Enregistrer'));
    await settle(tester);
    expect(find.text('TRAORÉ Awa'), findsOneWidget);
  }, timeout: const Timeout(Duration(seconds: 90)));
}
