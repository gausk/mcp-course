#!/bin/bash
set -euo pipefail

pip install uv
if [ ! -f pyproject.toml ]; then
  uv init
fi
uv venv --clear
source .venv/bin/activate
uv add arxiv python-dotenv mcp anthropic nest_asyncio
uv run chat.py