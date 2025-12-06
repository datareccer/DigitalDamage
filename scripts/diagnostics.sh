#!/bin/bash

echo "Digital Damage Diagnostics"
echo "-------------------------"

echo "Node Version:"
node -v

echo "Python Version:"
python3 --version

echo "Docker Version:"
docker --version 2>/dev/null || echo "Docker not installed"

echo "Checking network..."
ping -c 1 8.8.8.8 && echo "Network OK" || echo "Network issue"

echo "Log size:"
du -h ../logs
