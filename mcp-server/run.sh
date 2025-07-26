#!/bin/bash
set -exo pipefail

pip install uv
# Only initialize uv if not already initialized
if [ ! -f uv.lock ]; then
  uv init
fi
uv venv --clear
source .venv/bin/activate
uv add mcp arxiv
npx -y @modelcontextprotocol/inspector uv run server.py