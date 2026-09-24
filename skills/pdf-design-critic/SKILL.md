---
name: pdf-design-critic
description: Review composed PDF/report artifacts for information design, typography, density, page rhythm, tables/charts, clipping, and final-size readability before delivery.
---

# PDF Design Critic

This skill is a QA layer, not a renderer. Use it after document composition and before final delivery when visual quality materially matters.

## Review sequence

1. **Hierarchy** — title, section, subsection, body, caption, callout, and table hierarchy are visually distinct without excessive decoration.
2. **Density** — pages are neither sparse by accident nor overloaded; related information stays spatially close.
3. **Whitespace** — whitespace creates grouping and rhythm rather than unexplained empty zones.
4. **Typography** — line length, leading, weight, alignment, multilingual font behavior, and numeric alignment support scanning.
5. **Tables and charts** — remove default-office appearance; prioritize comparison, alignment, units, labels, and the intended takeaway.
6. **Captions** — captions state the insight or purpose, not merely the object type.
7. **Page rhythm** — adjacent pages vary intentionally while preserving one visual system.
8. **Integrity** — no clipping, overflow, orphan headings, split labels, unreadable footnotes, or rasterized text where vector/text output is expected.
9. **Final-size readability** — inspect diagrams and dense tables at the size they will occupy in the exported PDF.

## Bounded repair

Return findings as:
- blocker — content is missing, clipped, misleading, or unreadable;
- major — hierarchy, density, or comparison is materially weakened;
- minor — polish issue that does not impair comprehension.

Run one complete review, make one concentrated repair pass, then perform one confirmation pass. Stop unless blockers remain.

## Anti-patterns

Do not demand decoration for its own sake. Do not add gradients, cards, icons, images, or charts merely to fill space. Do not rewrite factual content unless a layout defect requires a structural change.
