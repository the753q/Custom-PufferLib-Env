#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== Setting up PufferLib with Custom Environment ==="

if [ ! -d "/puffertank/pufferlib" ]; then
    echo "ERROR: This script must be run INSIDE the VS Code Dev Container."
    exit 1
fi

echo "Creating symlink for custom environment..."
ln -sfn "$SCRIPT_DIR/my_env" /puffertank/pufferlib/ocean/my_env

echo "Creating symlink for custom environment config..."
ln -sfn "$SCRIPT_DIR/my_env.ini" /puffertank/pufferlib/config/my_env.ini

echo "Installing PufferLib in editable mode..."
cd /puffertank/pufferlib
uv pip install -e .

echo "=== Setup complete! ==="