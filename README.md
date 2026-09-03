# Visual Document Skill Pack

A thin orchestration pack for producing professional, visually distinctive PDF/HTML deliverables and efficiently managing visual document inputs.

## Architecture

The pack separates input understanding, reusable asset management, project discovery, and output production.

```
                              visual-router
                                   |
        ------------------------------------------------------
        |                    |                     |
 input processing       asset management     output production
        |                    |                     |
 document-compression   artifact-cache      Kami / diagram-maker / Gamma
                              |
                              |
                    project-memory-bridge
                              |
                              |
                    project-specific agents
```

## Skills

1. **visual-router** — top-level routing layer for visual inputs and outputs.
2. **document-compression** — reduces vision token usage by converting PDFs/images/Pages into structured reusable context.
3. **artifact-cache** — lightweight convention for storing and reusing extracted visual assets across workflows.
4. **project-memory-bridge** — discovery layer connecting reusable assets with project agents.
5. **Kami** — document art direction, typography, page composition, PDF/HTML delivery.
6. **diagram-maker** — architecture diagrams, process diagrams, concept maps, and Excalidraw.
7. **Host image generation** — optional, for a small number of photos/illustrations.
8. **Gamma** — optional external app for presentation/web-card output.

## Design principle

Do not merge capabilities into one monolith.

Keep each skill independently updateable and let routing layers coordinate workflows.

The intended flow is:

```
raw visual input
      ↓
document-compression
      ↓
artifact-cache
      ↓
project-memory-bridge
      ↓
analysis / production agents
```

## Repository layout

- `skills/visual-router/SKILL.md` — orchestration rules.
- `skills/document-compression/SKILL.md` — document/image compression workflow.
- `skills/artifact-cache/SKILL.md` — reusable asset conventions.
- `skills/project-memory-bridge/SKILL.md` — project discovery and routing rules.
- `upstream/manifest.json` — upstream sources and intended install strategy.
- `AGENTS.md` — guidance for agents working in this repository.

## Recommended routing

### Input

- Large PDF/image/Page collections → **document-compression first**
- Reused or cross-project assets → **artifact-cache**
- Cross-project discovery → **project-memory-bridge**
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
