#!/usr/bin/env bash
# Builds dist/dugout-openai.zip for upload at platform.openai.com/plugins (portable Agent Plugin layout).
set -euo pipefail
cd "$(dirname "$0")/.."
./scripts/sync-skills.sh
mkdir -p dist
rm -f dist/dugout-openai.zip
(cd plugins/openai && zip -qr ../../dist/dugout-openai.zip plugin.json mcp.json skills assets README.md)
echo "wrote dist/dugout-openai.zip"
unzip -l dist/dugout-openai.zip
