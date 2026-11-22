# MonAssistant Prof

Application Android personnelle pour professeurs (offline-first, multi-appareils).
Spécifications : [docs/specifications.md](docs/specifications.md).

## Structure (monorepo)
- `mobile/` — application Flutter (à initialiser : `flutter create` — voir ci-dessous)
- `backend/` — API Spring Boot 3 / Java 21 (modules `domain`, `application`, `infrastructure`, `presentation`)
- `docker-compose.yml` — PostgreSQL 16 pour le développement

## Démarrage
```bash
cp .env.example .env
docker compose up -d postgres
cd backend && mvn spring-boot:run
```
Mobile (sur ta machine, Flutter stable requis) :
```bash
flutter create --org com.monassistantprof --project-name mon_assistant_prof --platforms android mobile
```
