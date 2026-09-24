---
name: visual-router
description: Route visual-document work when a task needs input triage or selection among available document, diagram, product-UI, presentation, and image-production capabilities.
---

# Visual Router

Choose the smallest available workflow that satisfies the requested output.

## Input triage

Use **document-compression** when a source is too large for efficient direct inspection, or when structured extraction will be reused across runs. Page and image counts are signals, not automatic triggers.

Handle a screenshot, one-page document, targeted lookup, or other bounded inspection directly.

When compression is used, the flow is one-way:

`visual-router → document-compression → returned compact representation → production`

Document Compression returns to this caller and does not invoke Visual Router.

## Production routing

- Professional PDF / report / white paper / one-pager / typography-led HTML → **Kami**.
- Architecture / topology / workflow / lifecycle → prefer **Agentic Mermaid** when deterministic Mermaid, styled SVG/PNG, or verified structured edits are useful; use **diagram-maker** for free-form SVG, architecture-svg, concept maps, or editable Excalidraw.
- Product UI / dashboard / web app / frontend surface → **Impeccable** for design direction, critique, deterministic detection, and bounded polish.
- Slide-first / card-based visual storytelling → **Gamma**.
- Image generation → only when imagery carries information or clear editorial value.

For a report that needs a diagram, create a separate diagram only when it materially improves comprehension; otherwise use native document charts or layout.

## PDF quality gate

For serious PDF/report output, run **pdf-design-critic** after composition and before delivery. Treat it as QA, not as a renderer. It checks hierarchy, information density, whitespace, typography, tables/charts, captions, page rhythm, clipping, and final-size readability.

## Validation

Check only properties relevant to the emitted artifact. Prefer bounded QA: one complete inspection, one concentrated repair pass, then one confirmation pass. Avoid endless aesthetic iteration.
