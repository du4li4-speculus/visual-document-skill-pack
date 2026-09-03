---
name: visual-router
description: Route visual-document tasks by first classifying inputs, deciding whether compression is needed, and selecting the smallest production workflow across document-compression, Kami, diagram-maker, host image generation, and Gamma.
---

# Visual Router v0.2

Use this skill as the top-level visual document orchestration layer.

It manages both:

1. Visual input routing.
2. Visual output production routing.

It does not replace specialized skills.

## Core Rule

Choose the smallest workflow that satisfies the task.

Do not process every visual input deeply. Do not invoke every visual tool.

---

# Stage 1: Input Triage

Before production decisions, inspect the input.

## Large or reusable visual input

Route to **document-compression** first when:

- More than 5 images are provided.
- PDF exceeds roughly 10 pages.
- Pages/slides contain mixed text, images, charts, or tables.
- User requests comparison, database creation, tracking, or repeated analysis.
- The same source is referenced multiple times.

Purpose:

`raw visual input → structured context → targeted analysis`

## Small visual input

Do not compress when:

- Single screenshot.
- One-page document.
- Quick inspection.

Use direct visual reasoning.

---

# Stage 2: Production Routing

After input is understood, choose output workflow.

## Professional PDF / HTML document

Use **Kami** for:

- reports
- white papers
- one-pagers
- portfolios
- polished HTML
- typography-led documents

Kami owns hierarchy, typography, composition, spacing, production, and final visual QA.

## Diagram or architecture

Use **diagram-maker** for:

- software architecture
- system topology
- process flow
- product workflow
- capability models
- concept maps
- lifecycles
- editable whiteboards

Prefer:

- architecture-svg for systems.
- clean-svg for polished concepts/processes.
- excalidraw when editability matters.

## Combined report + diagram

Workflow:

1. Extract the message the diagram must communicate.
2. Create the diagram with diagram-maker.
3. Verify hierarchy, labels, arrows, and density.
4. Embed into Kami.
5. Let Kami control final composition.

## Images

Use host-native image generation only when images materially improve the artifact:

- cover hero
- editorial illustration
- concept illustration
- section visual

Prefer information design over decorative images.

## Gamma

Use Gamma for:

- card-based storytelling
- dynamic web-style documents
- rapid presentation generation
- explicit request for Gamma style

Gamma remains external.

---

# Stage 3: QA Contract

Before delivery verify:

- information hierarchy
- visual density
- overflow/clipping
- diagram readability
- image necessity
- PDF/HTML correctness

---

# Anti-patterns

Avoid:

- sending large document collections directly into vision models
- using OCR/compression when unnecessary
- using image generation instead of information design
- forcing every artifact through the same visual style
- combining unrelated visual systems
