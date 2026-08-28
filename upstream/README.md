# Upstream policy

This pack intentionally does not copy the full source of Kami or diagram-maker.

## Why

- upstream updates stay easy to track
- licensing remains explicit
- the orchestration layer can evolve independently
- local modifications do not silently fork upstream behavior

## Kami

Source: https://github.com/tw93/Kami

Use the official installation/package path recommended by Kami for the target agent environment whenever possible.

## diagram-maker

Source: https://github.com/c0ng-web/codex-skill/tree/main/skills/diagram-maker

The relevant skill directory contains `SKILL.md` plus its `references/` assets.

## Update workflow

1. Check the upstream repository.
2. Review changes to SKILL.md and references.
3. Test the upstream skill independently.
4. Update `upstream/manifest.json` if paths or installation semantics changed.
5. Re-test `visual-router` routing behavior.
6. Record meaningful changes in git history.

Do not silently overwrite local routing rules with upstream instructions.
