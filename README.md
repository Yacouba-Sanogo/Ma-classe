# MonAssistant Prof

Application Android personnelle pour professeurs, utilisable **hors ligne**.
Spécifications : [docs/specifications.md](docs/specifications.md).

## État d'avancement
| Lot | Contenu | État |
|---|---|---|
| 1 | Monorepo, backend Spring Boot (squelette), PostgreSQL Docker | fait |
| 2-3 | Architecture Flutter + base locale Drift | fait |
| 4 | Années (3 trimestres), classes, matières | fait |
| 5 | Élèves : ajout manuel, modification, changement de classe, archivage | fait |
| 6 | Appel (présent / absent / retard / justifié), statistiques | fait |
| 7 | Évaluations à barème libre, notes, dispense, historique, moyennes | fait |
| 8 | Résultats par matière : export PDF et Excel | fait (bulletin multi-matières à venir) |
| 9-10 | Backend, authentification, synchronisation multi-appareils | à faire |

## Structure
- `mobile/` — application Flutter (Riverpod, GoRouter, Drift/SQLite)
  - `lib/domain` : règles de calcul (pur Dart) · `lib/data` : base Drift + dépôt · `lib/features` : écrans
- `backend/` — API Spring Boot 3 / Java 21 (squelette)
- `docker-compose.yml` — PostgreSQL 16

## Installer l'application sur ton téléphone
**Sans rien installer** : onglet *Actions* de GitHub → dernier run « Mobile (Flutter) » → artefact
`MonAssistantProf-apk` → décompresser et installer `app-release.apk` sur le téléphone
(autoriser les sources inconnues).

**Depuis ton PC** (Flutter installé) :
```bash
cd mobile
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run            # téléphone branché en USB, débogage activé
flutter build apk      # APK dans build/app/outputs/flutter-apk/
```
Tests : `flutter test`.
