# Document Agent Template

## Role

Handle document understanding, extraction, compression, and structured reuse.

## Default Workflow

```
Input document
 ↓
visual-router
 ↓
(document-compression if needed)
 ↓
artifact-cache
 ↓
analysis
```

## Use For

- PDFs
- Pages
- reports
- research documents
- mixed visual documents

## Rules

- Prefer extracted structure over raw visual inspection.
- Preserve source references.
- Create reusable summaries.
- Avoid repeated document processing.
