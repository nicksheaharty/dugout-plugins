#!/usr/bin/env bash
# Copies the shared skills from the Claude plugin into the OpenAI plugin.
set -euo pipefail
cd "$(dirname "$0")/.."
rm -rf plugins/openai/skills
cp -R plugins/claude/skills plugins/openai/skills
echo "skills synced"
