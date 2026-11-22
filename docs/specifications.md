# MonAssistant Prof — Spécifications métier v1

## Configuration validée
| Paramètre | Décision |
|---|---|
| Plateforme | Android |
| Mobile | Flutter / Dart, Clean Architecture + MVVM, Riverpod, GoRouter, Drift (SQLite), Dio, WorkManager |
| Backend | Spring Boot 3 / Java 21, Spring Security + JWT, Spring Data JPA, Flyway |
| Base distante | PostgreSQL |
| Utilisateurs | Un seul rôle : le professeur (plusieurs appareils par compte) |
| Barèmes | Libres et personnalisables |
| Année scolaire | 3 trimestres exactement |
| Saisie des élèves | Manuelle |
| Documents | PDF et Excel |
| Synchronisation | Offline-first + Outbox |

## Entités
Teacher, AcademicYear, SchoolTerm, Classroom, Student, Enrollment, Subject,
TeachingAssignment, Lesson, AttendanceSession, AttendanceRecord, Evaluation,
Grade, Device, SyncOperation (+ `grade_audits` pour l'historique des notes).
Tous les identifiants sont des UUID générés côté client.

## Règles métier
**Années / trimestres** — RM-001 une année appartient à un professeur ; RM-002 exactement 3 trimestres
(créés atomiquement avec l'année) ; RM-003 dates des trimestres incluses dans l'année ; RM-004 pas de
chevauchement ; RM-005 une seule année active par professeur ; RM-006 année clôturée = consultable.

**Élèves / classes** — RM-007 UUID unique ; RM-008 un seul professeur propriétaire ; RM-009 plusieurs
inscriptions possibles dans le temps ; RM-010 une inscription active par élève et par année ;
RM-011 élève archivé : pas de nouvelle inscription sans réactivation ; RM-012 archiver une classe
conserve l'historique.

**Notes** — RM-013 barème > 0 ; RM-014 coefficient > 0 ; RM-015 0 ≤ note ≤ barème ; RM-016/017 une note
par élève et par évaluation ; RM-018 statuts `PENDING`, `GRADED`, `EXEMPT` ; RM-019 absence ≠ zéro ;
RM-020 trace de l'ancienne valeur (`grade_audits`) ; RM-021 une évaluation = un seul trimestre.

**Moyennes**
- Trimestrielle : `M_T = Σ((N_i / B_i) × 20 × C_i) / Σ C_i`
- Annuelle par défaut : `(M_T1 + M_T2 + M_T3) / 3`. Un trimestre sans moyenne n'est jamais traité comme 0 :
  le résultat annuel reste « incomplet » tant que les trois périodes ne sont pas évaluables.
- Les notes `PENDING` et `EXEMPT` sont exclues du calcul.

**Présences** — RM-022 une séance = une classe + une matière ; RM-023 un statut par élève et par séance ;
RM-024 présent / absent / retard / justifié ; RM-025 modification après validation avec traçabilité ;
RM-026 séance non terminée ≠ appel finalisé.

**Synchronisation** — RM-027 sauvegarde locale avant tout appel réseau ; RM-028 opération à identifiant unique ;
RM-029 le serveur ne traite jamais deux fois la même opération ; RM-030 un échec ne supprime rien en local ;
RM-031 identifiant d'appareil distinct ; RM-032 conflits détectés ; RM-033 appareil révoqué refusé ;
RM-034 les suppressions (logiques) sont propagées.

## Contraintes PostgreSQL
UUID générés par le client ; clés étrangères ; `NUMERIC` pour notes/barèmes/coefficients (jamais `FLOAT`) ;
CHECK sur coefficients, barèmes, notes ≤ barème, dates de trimestres ; UNIQUE (séance, élève) pour les
présences ; UNIQUE (évaluation, élève) pour les notes ; idempotence des opérations de sync.
La propriété (`teacher_id`) est aussi vérifiée dans chaque requête serveur.

## Feuille de route
1. Initialisation · 2. Architecture Flutter · 3. Base locale Drift · 4. Années, classes, matières ·
5. Élèves · 6. Présences · 7. Évaluations et notes · 8. Rapports (PDF/Excel) · 9. Backend + auth ·
10. Synchronisation · 11. Sécurité et tests · 12. Livraison.

**Premier jalon (100 % hors ligne)** : année + 3 trimestres, classe, élèves manuels, appel,
interrogation, notes, moyennes, redémarrage sans perte. Le backend vient ensuite.
