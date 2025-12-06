#!/bin/bash

VERSION=$(cat ../VERSION)

echo "=================================="
echo "   DIGITAL DAMAGE PLATFORM v$VERSION"
echo "=================================="
echo "1) Ghost Shell"
echo "2) Recovery Agent"
echo "3) Auto-EX"
echo "4) FleetSense"
echo "5) Plugins"
echo "6) Build All"
echo "7) Update"
echo "8) Diagnostics"
echo "9) Exit"
echo "=================================="

read -p "Choice: " choice

case $choice in
    1) ../apps/ghost-shell/run.sh ;;
    2) ../apps/recovery-agent/run.sh ;;
    3) ../apps/auto-ex/run.sh ;;
    4) ../apps/fleetsense/run.sh ;;
    5) ./plugin-loader.sh ;;
    6) ./build-all.sh ;;
    7) ./update.sh ;;
    8) ./diagnostics.sh ;;
    9) exit 0 ;;
esac
