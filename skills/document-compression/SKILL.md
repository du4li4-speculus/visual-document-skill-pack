---
name: document-compression
description: Create a compact, structured representation of a large or reusable visual document when direct inspection would be inefficient.
---

# Document Compression

Convert expensive visual inputs into the smallest structured representation needed by the caller.

## When to use

Use this skill when:

- the relevant material cannot be inspected efficiently in one pass;
- the user requests comparison, tracking, indexing, or reuse;
- mixed layouts require preserving relationships among text, tables, charts, and images.

Do not use it for a bounded one-off inspection when direct extraction or vision is sufficient. Counts such as five images or ten pages are triage signals, not automatic requirements.

## Workflow

1. Classify the source as text, scan, image collection, slides, or mixed document.
2. Prefer direct text extraction when it preserves the needed evidence.
3. Preserve page locations, headings, tables, image references, and material visual relationships.
4. Return a compact representation to the calling workflow.
5. Inspect original pages only when visual verification is needed.

For a one-off task, create only the transient representation needed downstream.

Create a reusable bundle such as `content.md`, `structure.json`, `metadata.json`, and `SUMMARY.md` only when reuse, comparison, indexing, or archival is requested or clearly expected. Keep source references and do not replace the original.

## Integration boundary

This skill is called by Visual Router or a project workflow and returns its result to that caller. It does not invoke Visual Router or select a production tool.
