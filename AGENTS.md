# AGENTS.md

## Objective

Maintain this repository as a thin orchestration layer for professional visual documents and reusable visual knowledge assets.

The repository separates:

- input understanding
- asset reuse
- output production

Do not turn this into a monolithic document agent.

---

# Core Workflow

Agents should follow this order:

```
Visual input
      ↓
visual-router
      ↓
(optional) document-compression
      ↓
artifact-cache
      ↓
project-memory-bridge
      ↓
analysis / production workflow
```

Not every task requires every layer.

Use the smallest valid workflow.

---

# Input Rules

## Large or reusable visual inputs

Use document-compression first when:

- multiple images are provided
- long PDFs are provided
- Pages or slides contain mixed content
- the user wants future reuse, comparison, tracking, or databases
- the same source will be referenced repeatedly

Goal:

Convert expensive visual context into structured reusable assets.

## Small visual inputs

Do not invoke compression for:

- one screenshot
- quick visual questions
- simple translation
- one-time inspection

Use direct reasoning.

---

# Asset Rules

After compression:

- store reusable outputs through artifact-cache conventions
- preserve source references
- prefer summaries and indexes before raw files
- avoid duplicate extraction of the same document

Use project-memory-bridge when an asset should be discoverable by another project workflow.

---

# Production Routing

Prefer:

## Kami

For:

- professional PDFs
- reports
- white papers
- one-pagers
- polished HTML documents

## diagram-maker

For:

- architecture
- workflows
- system diagrams
- capability models
- process visualization

## Gamma

For:

- presentation-first artifacts
- card-based storytelling
- web-style documents

Gamma is external and should not be vendored.

## Image generation

Use only when imagery adds information or strong editorial value.

Avoid decorative AI images replacing information design.

---

# Anti-patterns

Avoid:

- sending large document collections directly into vision models
- rebuilding existing upstream skills
- creating unnecessary databases
- storing conversation history as memory
- invoking all visual tools for every task
- optimizing aesthetics before information structure

---

# Testing Requirements

When modifying routing logic, test:

1. A professional PDF/report request.
2. An architecture diagram request.
3. A combined report + diagram request.
4. A large document collection requiring compression.
5. A request that should bypass visual tooling.

---

# Success Criteria

The pack succeeds when an agent can:

- reduce unnecessary vision usage
- reuse existing document assets
- discover relevant project resources
- select the correct production workflow
- preserve separation between tools, assets, and project intelligence
