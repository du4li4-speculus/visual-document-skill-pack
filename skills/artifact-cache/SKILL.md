---
name: artifact-cache
description: Persist extracted visual-document assets when the user requests reuse or the same source will be used across multiple runs.
---

# Artifact Cache

Store reusable document intelligence without creating a database or general memory system.

Do not create a cache for a one-off task. Register an asset only when reuse, comparison, indexing, or archival is requested or clearly expected.

## Minimal record

Keep only what downstream work needs:

- source reference and type;
- creation date and originating project;
- extraction method;
- confidence or verification status;
- location of the compact representation.

Reuse an existing verified representation before extracting the same source again. Load index metadata and summaries before raw files, and return to the original only for verification.

A project may use a lightweight `.artifacts/` structure, but create only the directories required by actual assets.
