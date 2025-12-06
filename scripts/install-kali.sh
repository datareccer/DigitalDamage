#!/bin/bash

echo "[Digital Damage] Installing Kali dependencies..."

sudo apt update -y
sudo apt full-upgrade -y

sudo apt install -y \
    python3 python3-pip git nodejs npm build-essential \
    nmap sqlmap hydra nikto seclists gobuster dirb ffuf \
    net-tools tcpdump tshark jq curl wget tmux

pip3 install requests rich flask fastapi uvicorn beautifulsoup4 lxml

echo "[Digital Damage] Kali environment ready."
