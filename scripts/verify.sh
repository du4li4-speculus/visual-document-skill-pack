#!/usr/bin/env bash

set -e

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

 echo "Checking visual-document-skill-pack..."

FILES=(
  "AGENTS.md"
  "agent-manifest.yaml"
  "skills/visual-router/SKILL.md"
  "skills/document-compression/SKILL.md"
  "skills/artifact-cache/SKILL.md"
  "skills/project-memory-bridge/SKILL.md"
)

for FILE in "${FILES[@]}"; do
  if [ -f "$ROOT/$FILE" ]; then
    echo "OK: $FILE"
  else
    echo "MISSING: $FILE"
    exit 1
  fi
done

echo ""
echo "All core skills are available."
