#!/bin/bash

echo "[Digital Damage] Installing macOS dependencies..."

# Homebrew
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update

# Core Dev Tools
brew install git gh python@3 node npm pnpm tmux jq wget curl openssl

# Security / Recon / OSINT Tools
brew install nmap hydra nikto sqlmap seclists mitmproxy hashcat radare2 \
             gdb ffmpeg yt-dlp masscan httprobe amass

# Docker (optional but included)
brew install --cask docker

# Python Tools
pip3 install --upgrade pip
pip3 install requests rich flask fastapi uvicorn beautifulsoup4 lxml

echo "[Digital Damage] macOS environment ready."
