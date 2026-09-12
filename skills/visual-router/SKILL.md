---
name: visual-router
description: Route visual-document work when a task needs input triage or selection among available document, diagram, presentation, and image-production capabilities.
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

Select an available capability based on the requested artifact:

- Document or PDF production for reports, white papers, one-pagers, and typography-led documents.
- Diagram production for architecture, topology, process, capability, or lifecycle views.
- Presentation production for slide-first or card-based storytelling.
- Image generation when imagery carries information or clear editorial value.

Named tools are optional preferences. Do not search for, install, or wait for a preferred tool when an available equivalent can complete the task.

For a report that needs a diagram, create a separate diagram only when it materially improves comprehension; otherwise use native document charts or layout.

## Validation

Check only properties relevant to the emitted artifact, such as hierarchy, readability, clipping, and file correctness. Render or run broader visual QA when layout is material to the request.
