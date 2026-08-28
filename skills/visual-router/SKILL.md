---
name: visual-router
description: Route professional PDF, HTML, report, white paper, one-pager, diagram, architecture, flow, and visual-document tasks across Kami, diagram-maker, host image generation, and Gamma.
---

# Visual Router

Use this skill as an orchestration layer. It does not replace upstream design skills.

## Core rule

Choose the smallest visual stack that can satisfy the deliverable. Avoid decorative complexity.

## Routing

### Professional PDF / HTML document
Use **Kami** for professional reports, PDFs, white papers, one-pagers, memos, portfolios, polished HTML, and typography-led deliverables. Kami owns hierarchy, typography, composition, spacing, production, and final visual QA.

### Diagram or architecture
Use **diagram-maker** for software architecture, system topology, process flow, product workflow, capability models, concept maps, lifecycles, swimlanes, and editable whiteboards.

Prefer `architecture-svg` for software/cloud/infra, `clean-svg` for polished concepts/processes, and `excalidraw` when editability matters.

### Combined report + diagram
1. Extract the claim each diagram must communicate.
2. Use diagram-maker to create it.
3. Verify labels, arrows, hierarchy, and density.
4. Embed the finished asset into the Kami document.
5. Let Kami control final page composition and caption treatment.

### Images
Use host-native image generation only when an image materially improves the deliverable: cover hero, editorial illustration, concept illustration, or section visual. Default to a low image count. Prefer typography, diagrams, tables, and whitespace over generic AI imagery.

### Gamma
Use Gamma as an alternative route for card-based visual storytelling, dynamic web-style documents, rapid presentation generation, or when the user explicitly wants a distinct style from Kami. Gamma is an external app, not vendored into this repository.

## Style decision

Prefer Kami for serious, editorial, information-dense, report-like, PDF-first artifacts. Prefer Gamma for presentation-forward, card-based, visually dynamic, browser-first, collaboratively editable artifacts.

## Anti-patterns

Avoid using every tool on every task; generic AI-tech imagery; unnecessary gradients/glows; unreadably dense diagrams; letting image generation substitute for information design; or mixing unrelated visual systems in one artifact.

## QA contract

Before delivery verify hierarchy, overflow/clipping, diagram readability at final size, consistent visual density, justified image usage, insight-led captions, and correct PDF/HTML output format.
