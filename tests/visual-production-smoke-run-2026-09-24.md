# Visual Production Smoke Run — 2026-09-24

## Summary

The Agent environment now has Kami, diagram-maker, visual-router, pdf-design-critic, Impeccable, and Agentic Mermaid installed. Four scenarios passed end to end. The editable-diagram and negative-routing checks passed at the installed-file/policy level, with the limitations recorded below.

The report-only and report-plus-diagram PDFs were temporary QA outputs. Each rendered to exactly two pages; all four page images were inspected. The final report layouts showed clear hierarchy, readable tables, no clipping, and no unexplained page break or orphan heading.

## Installed inventory

| Component | Installed version | Source |
|---|---|---|
| visual-router / pdf-design-critic | Pack 0.2.0 | `du4li4-speculus/visual-document-skill-pack` main at `dc68e97b6e33cf18ec99d40eab03014ad0ea58a0` |
| Kami | Skill 1.16.0; WeasyPrint 70.0 | `tw93/Kami` main at `a489e39633d1d6a044047bc9bf4452f7a65bb00a` |
| diagram-maker | Upstream skill; no version file declared | `c0ng-web/codex-skill` main at `52f81a368473c15aa4df4ad50aa6c5539d58b94c` |
| Impeccable | Skill 0.1.5; engine 4.0.0 | `pbakaus/impeccable` main at `e0881d2de397d5e9761d7b35ff5017d8f5ebf69b` |
| Agentic Mermaid | npm package 0.4.1; Node 24.19.0 | `adewale/agentic-mermaid` main at `d60f8658b1a769391b5d201382b5db6147028ef6` |

Each installed skill's `SKILL.md` blob matched the corresponding upstream GitHub file at the recorded source revision.

## Scenario results

| # | Result | Evidence |
|---|---|---|
| 1. PDF report | PASS | Kami/WeasyPrint produced a two-page report with a comparison table and evidence callout. Both pages were rendered and reviewed; Kami's `--check-visual` checklist was run. |
| 2. Formal architecture | PASS | Agentic Mermaid `verify` returned `ok: true`, no warnings, 6 nodes, and 5 edges. SVG and 1200px PNG rendered; the SVG was embedded and inspected in the combined PDF. |
| 3. Editable concept map | PARTIAL PASS | diagram-maker generated Excalidraw JSON that parsed and passed element/binding checks: 5 labeled shapes, 4 bound arrows, and 2 named groups. No live Excalidraw app was available to import and render the file. |
| 4. Product UI | PASS | Impeccable detected 14 raw findings across 6 rule families in the first draft. After bounded repair and confirmation, the final scan exited 0 with no findings. `PRODUCT.md` and `DESIGN.md` stayed separate. |
| 5. Combined report + diagram | PASS | Agentic Mermaid SVG was embedded in a Kami report. The final two-page PDF was rendered, checked for clipping and table readability, and reviewed with the PDF critic checklist. |
| 6. Negative routing | PARTIAL PASS | The installed visual-router explicitly says ordinary chat should not invoke visual-document tooling. This was checked against the policy text; no separate fresh-session behavior replay was available. |

The repository's `scripts/verify.sh` passed after its core-file list was extended to include `pdf-design-critic`.

## Installation and compatibility notes

- Kami's `build.py --doctor` initially reported WeasyPrint missing. System Pango/Cairo libraries were present, so WeasyPrint 70.0 and pypdf were installed in the private `$CODEX_HOME/kami-runtime` environment. MathJax was not installed because the smoke content contained no mathematics.
- The Agentic Mermaid package was installed under `$CODEX_HOME/agentic-mermaid-runtime`; a global npm install could not create a symlink in the managed, read-only Node runtime directory. Use `$CODEX_HOME/agentic-mermaid-runtime/node_modules/.bin/am`.
- Impeccable's global bundle installer could not resolve `impeccable.style` in this environment. The upstream `.agents/skills/impeccable` directory was installed from GitHub, and the official launcher/binary was verified by running `--help`, `--version`, and the detector.
- The installed Agentic Mermaid skill mentions `--min-label-px`, but npm CLI 0.4.1 rejects that flag. The smoke test used the supported `--fit-width 1200` output and visual inspection at final PDF size.

## Test scope

The smoke tests exercise routing instructions, installed runtimes, document rendering, detector output, and static Excalidraw structure. The two starred scenarios remain limited to installed-file/policy verification rather than live application/session replay.
