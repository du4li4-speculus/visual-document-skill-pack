#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENDOR="$ROOT/.upstream"
mkdir -p "$VENDOR"

if [ ! -d "$VENDOR/Kami/.git" ]; then
  git clone https://github.com/tw93/Kami.git "$VENDOR/Kami"
else
  git -C "$VENDOR/Kami" pull --ff-only
fi

if [ ! -d "$VENDOR/codex-skill/.git" ]; then
  git clone https://github.com/c0ng-web/codex-skill.git "$VENDOR/codex-skill"
else
  git -C "$VENDOR/codex-skill" pull --ff-only
fi

echo "Upstreams available under $VENDOR"
echo "Kami skill: $VENDOR/Kami"
echo "diagram-maker: $VENDOR/codex-skill/skills/diagram-maker"
