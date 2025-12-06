#!/bin/bash

echo "[Digital Damage] Building all components..."

# Ghost Shell build
if [ -d "../apps/ghost-shell" ]; then
    echo "Building Ghost Shell..."
    cd ../apps/ghost-shell
    npm install
    npm run build 2> /dev/null || true
    cd ../../scripts
fi

# Recovery Agent build
if [ -d "../apps/recovery-agent" ]; then
    echo "Building Recovery Agent..."
    cd ../apps/recovery-agent
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt 2> /dev/null || true
    deactivate
    cd ../../scripts
fi

echo "[Digital Damage] All builds complete."
