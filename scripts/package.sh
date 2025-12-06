#!/bin/bash
echo "[Digital Damage] Packaging distribution..."

mkdir -p ../dist
tar -czf ../dist/digital-damage-$(cat ../VERSION).tar.gz ../apps ../scripts ../docs ../plugins

echo "[Digital Damage] Package created in dist/"
