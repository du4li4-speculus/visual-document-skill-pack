---
name: artifact-cache
description: Define a lightweight storage and reuse convention for structured assets produced by document-compression and consumed by visual-document workflows.
---

# Artifact Cache Skill

## Purpose

Provide a shared structure for reusable document intelligence assets.

The artifact cache is not a database and does not replace project storage systems.

It creates a stable handoff layer between:

raw inputs → compressed context → downstream agents

## Core Principle

Do not repeatedly process the same visual source.

Once a document has been converted into structured assets, future workflows should reuse those assets.

## Recommended Structure

```
.artifacts/

├── raw/
│   Original files or references.
│
├── extracted/
│   Text extraction, OCR output, structured page data.
│
├── summaries/
│   Human-readable navigation files.
│
├── schemas/
│   JSON structures describing reusable entities.
│
└── indexes/
    Cross-project lookup information.
```

## Asset Lifecycle

```
Input
 ↓
Document Compression
 ↓
Artifact Cache
 ↓
Analysis Agent
 ↓
Production Agent
```

## Required Metadata

Reusable assets should record:

- source name
- source type
- creation date
- originating project
- extraction method
- confidence or verification status

Example:

```json
{
  "source": "school_curriculum.pdf",
  "type": "pdf",
  "project": "AP research",
  "status": "verified"
}
```

## Retrieval Rules

Prefer:

1. index metadata
2. summary files
3. extracted chunks
4. original visual files only when verification is needed

## Anti-patterns

Avoid:

- storing only summaries without source references
- duplicating the same extracted document in multiple projects
- creating heavy database infrastructure too early
- treating cache as permanent memory

The artifact cache is a lightweight bridge, not a full knowledge graph.
