#!/usr/bin/env bash
# Copies the shared skills from the Claude plugin into the OpenAI plugin. Skills that only the OpenAI plugin has
# (creator-shortlist) are left alone.
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p plugins/openai/skills
for d in plugins/claude/skills/*/; do
  name=$(basename "$d")
  rm -rf "plugins/openai/skills/$name"
  cp -R "$d" "plugins/openai/skills/$name"
done
echo "skills synced"
