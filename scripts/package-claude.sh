#!/usr/bin/env bash
# Builds dist/dugout-claude.zip: the Claude Code plugin folder (unzip it and run `claude --plugin-dir <folder>`,
# or install from this repo's marketplace with `/plugin marketplace add nicksheaharty/dugout-plugins`).
set -euo pipefail
cd "$(dirname "$0")/.."
./scripts/sync-skills.sh
mkdir -p dist
rm -f dist/dugout-claude.zip
(cd plugins && zip -qr ../dist/dugout-claude.zip claude -x '*.DS_Store')
echo "wrote dist/dugout-claude.zip"
unzip -l dist/dugout-claude.zip
