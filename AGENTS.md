# AGENTS.md

## Objective

Maintain this repository as a thin orchestration layer for professional visual documents.

## Rules

- Treat upstream Kami and diagram-maker as independent skills.
- Do not merge their entire instruction sets into visual-router.
- Prefer routing over duplication.
- Keep third-party source out of this repository unless licensing and update policy are explicit.
- Gamma remains an external app integration, not vendored code.
- Host-native image generation is optional and should be used sparingly.
- When changing visual-router, test at least a PDF/report request, an architecture diagram request, a combined report + diagram request, and a request that should not trigger visual tooling.

## Success criteria

The pack is successful when an agent can consistently choose the correct visual production path without making every artifact look the same or invoking unnecessary tools.
