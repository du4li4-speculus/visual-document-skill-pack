---
name: document-compression
description: Reduce vision token usage when handling large PDFs, images, Pages, and mixed documents by extracting structure first and creating reusable compressed representations. Activate for document collections, repeated references, or long-form visual analysis.
---

# Document Compression Skill

## Purpose

Convert expensive visual inputs into lightweight structured assets before deep analysis.

The goal is not OCR alone. The goal is:

`visual input → extracted structure → compressed context → targeted retrieval`

## Activation Rules

Activate when any of the following happens:

- More than 5 images are uploaded.
- A PDF has more than 10 pages.
- The user says they will reuse, compare, track, or build a database from files.
- The same document is referenced multiple times in a conversation.
- The input contains mixed layouts: pages, screenshots, tables, charts, or embedded images.

Do NOT activate for:

- A single screenshot.
- A short PDF requiring only one answer.
- Simple translation or quick visual inspection.

## Core Workflow

### 1. Triage

Classify input:

- Text PDF → extract text directly.
- Scanned PDF → OCR required.
- Images → OCR plus visual description only when needed.
- Pages/slides/mixed documents → preserve element relationships.

Avoid full vision processing when text extraction is sufficient.

### 2. Extract

Create intermediate representations:

```
processed/
├── content.md
├── structure.json
└── metadata.json
```

Preserve:

- page number
- headings
- tables
- image references
- important visual relationships

### 3. Compress

Create a summary index:

```
SUMMARY.md
```

Include:

- document purpose
- available sections
- important pages
- reusable facts
- unresolved areas

Do not replace the original document. Create a navigation layer.

### 4. Retrieve Selectively

Future analysis should use:

1. SUMMARY.md first.
2. Relevant extracted chunks second.
3. Original images/pages only when visual verification is needed.

## Output Schema

For long-lived projects prefer:

```json
{
  "source": "document name",
  "type": "pdf|image|pages|slides",
  "sections": [],
  "key_entities": [],
  "references": [],
  "visual_elements": []
}
```

## Integration

This skill is an infrastructure layer for visual-document workflows.

Recommended routing:

Document Compression → Visual Router → Kami / diagram-maker / Gamma

It should not replace:

- document styling
- PDF generation
- presentation design
- OCR engines

Keep the skill lightweight. Prefer orchestration over implementation.
