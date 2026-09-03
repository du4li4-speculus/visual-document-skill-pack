---
name: project-memory-bridge
description: Provide a lightweight discovery layer between reusable artifacts and project agents without creating a heavy memory system.
---

# Project Memory Bridge Skill

## Purpose

Connect reusable artifacts with the projects and agents that need them.

This layer solves:

"An asset exists, but how does another workflow discover it?"

It does not replace:

- personal memory
- vector databases
- project databases
- knowledge graphs

It is an index and routing layer.

## Core Principle

Separate:

- where information is stored
- how agents discover relevant information

The bridge only maintains discoverability.

## Lifecycle

```
Artifact Cache
      |
      v
Project Memory Bridge
      |
      v
Project Agent
```

## Recommended Structure

```
.memory-index/

├── projects.json
├── artifacts.json
└── relations.json
```

## Metadata

Each registered artifact should include:

```json
{
  "artifact": "student_record.json",
  "location": "artifact-cache",
  "project": "TOEFL grading",
  "usable_by": ["grading-agent", "report-agent"],
  "status": "active"
}
```

## Discovery Rules

When a project starts:

1. Check available project artifacts.
2. Load summaries before raw files.
3. Retrieve only relevant assets.
4. Request original files only for verification.

## Integration

Recommended stack:

```
visual-router
      |
document-compression
      |
artifact-cache
      |
project-memory-bridge
      |
project-specific agents
```

## Anti-patterns

Avoid:

- storing every conversation detail
- duplicating full documents
- turning this into a general memory database
- hiding source references

The bridge provides navigation, not intelligence storage.
