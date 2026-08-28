# Visual Document Skill Pack

A thin orchestration pack for producing professional, visually distinctive PDF/HTML deliverables.

## Architecture

1. **visual-router** — decides which visual workflow to use.
2. **Kami** — document art direction, typography, page composition, PDF/HTML delivery.
3. **diagram-maker** — architecture diagrams, process diagrams, concept maps, and Excalidraw.
4. **Host image generation** — optional, for a small number of photos/illustrations.
5. **Gamma** — optional external app for an alternative visual language, especially presentation/web-card output.

## Design principle

Do not merge upstream skills into one monolith. Keep Kami and diagram-maker independently updateable, and let `visual-router` coordinate them.

## Repository layout

- `skills/visual-router/SKILL.md` — orchestration rules.
- `upstream/manifest.json` — upstream sources and intended install strategy.
- `upstream/README.md` — update policy.
- `scripts/bootstrap.sh` — helper for cloning/updating upstream skills locally.
- `AGENTS.md` — guidance for agents working in this repository.

## Recommended routing

- Professional PDF / report / one-pager / white paper / polished HTML → **Kami**
- Architecture / workflow / capability model / system diagram → **diagram-maker**
- Report contains diagrams → **diagram-maker first**, then embed into **Kami**
- Small number of editorial photos or illustrations → host-native image generation
- More dynamic, card-based, presentation/web aesthetic → **Gamma**
- Ordinary chat answers → do not invoke visual-document tooling

## Upstream projects

- Kami: https://github.com/tw93/Kami
- diagram-maker: https://github.com/c0ng-web/codex-skill/tree/main/skills/diagram-maker

This pack does not vendor third-party source by default. It records upstream references and keeps the orchestration layer separate so upstream licenses and updates remain clear.
