#!/usr/bin/env bash

set -euo pipefail

REPO="https://github.com/du4li4-speculus/visual-document-skill-pack.git"
TARGET="${HOME}/.codex/skills/visual-document-skill-pack"

 echo "Installing visual-document-skill-pack..."

if [ -d "$TARGET/.git" ]; then
  echo "Existing installation found. Updating..."
  git -C "$TARGET" pull --ff-only
else
  mkdir -p "$(dirname "$TARGET")"
  git clone "$REPO" "$TARGET"
fi

 echo ""
 echo "Installation complete:"
 echo "$TARGET"
 echo ""
 echo "Available skills:"
 echo "- visual-router"
 echo "- document-compression"
 echo "- artifact-cache"
 echo "- project-memory-bridge"
 echo ""
 echo "Restart your agent environment to reload skills."
