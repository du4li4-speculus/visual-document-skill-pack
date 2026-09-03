# Visual Document Skill Pack

A thin orchestration pack for producing professional, visually distinctive PDF/HTML deliverables and efficiently managing visual document inputs.

## Architecture

The pack separates input understanding from output production.

```
                 visual-router
                      |
        --------------------------------
        |                              |
 input processing              output production
        |                              |
 document-compression      Kami / diagram-maker / Gamma
```

## Skills

1. **visual-router** — top-level routing layer for visual inputs and outputs.
2. **document-compression** — reduces vision token usage by converting PDFs/images/Pages into structured reusable context.
3. **Kami** — document art direction, typography, page composition, PDF/HTML delivery.
4. **diagram-maker** — architecture diagrams, process diagrams, concept maps, and Excalidraw.
5. **Host image generation** — optional, for a small number of photos/illustrations.
6. **Gamma** — optional external app for presentation/web-card output.

## Design principle

Do not merge capabilities into one monolith.

Keep each skill independently updateable and let routing layers coordinate workflows.

## Repository layout

- `skills/visual-router/SKILL.md` — orchestration rules.
- `skills/document-compression/SKILL.md` — document/image compression workflow.
- `upstream/manifest.json` — upstream sources and intended install strategy.
- `AGENTS.md` — guidance for agents working in this repository.

## Recommended routing

### Input

- Large PDF/image/Page collections → **document-compression first**
- Small screenshots or quick inspection → direct visual reasoning

### Output

- Professional PDF / report / one-pager / white paper / polished HTML → **Kami**
- Architecture / workflow / capability model / system diagram → **diagram-maker**
- Report containing diagrams → **diagram-maker first**, then embed into **Kami**
- Small number of editorial photos or illustrations → host-native image generation
- Dynamic card-based presentation/web aesthetic → **Gamma**

Ordinary chat answers should not invoke visual-document tooling.

## Upstream projects

- Kami: https://github.com/tw93/Kami
- diagram-maker: https://github.com/c0ng-web/codex-skill/tree/main/skills/diagram-maker

This pack does not vendor third-party source by default. It keeps orchestration separate so upstream licenses and updates remain clear.
