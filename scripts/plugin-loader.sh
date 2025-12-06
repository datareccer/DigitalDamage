#!/bin/bash

PLUGIN_DIR="../plugins"

echo "[Digital Damage] Available plugins:"
ls $PLUGIN_DIR

read -p "Enter plugin to run: " plugin

if [ -f "$PLUGIN_DIR/$plugin/run.sh" ]; then
    bash "$PLUGIN_DIR/$plugin/run.sh"
else
    echo "Plugin not found."
fi
