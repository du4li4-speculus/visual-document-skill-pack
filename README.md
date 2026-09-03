# Visual Document Skill Pack

A thin orchestration pack for producing professional, visually distinctive PDF/HTML deliverables and managing visual document inputs efficiently.

## Architecture

1. **visual-router** — decides which visual workflow to use.
2. **document-compression** — reduces vision token usage by converting PDFs/images/Pages into structured reusable context.
3. **Kami** — document art direction, typography, page composition, PDF/HTML delivery.
4. **diagram-maker** — architecture diagrams, process diagrams, concept maps, and Excalidraw.
5. **Host image generation** — optional, for a small number of photos/illustrations.
6. **Gamma** — optional external app for an alternative visual language, especially presentation/web-card output.

## Design principle

Do not merge upstream skills into one monolith. Keep each capability independently updateable, and let routing layers coordinate workflows.

## Repository layout

- `skills/visual-router/SKILL.md` — orchestration rules.
- `skills/document-compression/SKILL.md` — document/image compression workflow.
- `upstream/manifest.json` — upstream sources and intended install strategy.
- `upstream/README.md` — update policy.
- `scripts/bootstrap.sh` — helper for cloning/updating upstream skills locally.
- `AGENTS.md` — guidance for agents working in this repository.

## Recommended routing

- Large PDF/image/Page collections → **document-compression first**
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
