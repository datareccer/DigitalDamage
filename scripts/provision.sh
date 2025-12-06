#!/bin/bash

echo "[Digital Damage] Running provisioning..."

mkdir -p ~/DigitalDamage/logs
mkdir -p ~/DigitalDamage/dist
mkdir -p ~/DigitalDamage/tmp

# Shell Enhancements
if ! grep -q "DigitalDamage" ~/.zshrc; then
    echo "# DigitalDamage enhancements" >> ~/.zshrc
    echo "export DD_HOME=~/DigitalDamage" >> ~/.zshrc
    echo "alias dd='~/DigitalDamage/scripts/launcher.sh'" >> ~/.zshrc
fi

echo "[Digital Damage] Provisioning complete."
