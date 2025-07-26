#!/bin/bash
set -euo pipefail

pip install uv
if [ ! -f pyproject.toml ]; then
  uv init
fi
uv venv --clear
source .venv/bin/activate
uv add arxiv python-dotenv mcp anthropic
uv run server.py