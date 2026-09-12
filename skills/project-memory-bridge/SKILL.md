---
name: project-memory-bridge
description: Register or retrieve reusable artifacts when cross-project reuse, historical comparison, or an existing artifact index is relevant.
---

# Project Memory Bridge

Provide discoverability between reusable artifacts and project agents. This is an optional index, not a database or intelligence store.

## Trigger boundary

Use this skill only after cross-project reuse, historical comparison, or an existing artifact index becomes relevant. Do not inspect or create an index at the start of every project, and do not register one-off outputs.

## Workflow

1. Check the relevant existing index, if one exists.
2. Load summaries or metadata before raw files.
3. Retrieve only assets needed for the current task.
4. Request original sources only for verification.
5. Register new relations only when another project or later run is expected to use them.

Keep source references visible. Do not store conversation history or duplicate full documents.
