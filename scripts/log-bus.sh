#!/bin/bash
LOG=../logs/events.log

timestamp=$(date +"%Y-%m-%d %H:%M:%S")
echo "{\"ts\":\"$timestamp\", \"component\":\"$1\", \"msg\":\"$2\"}" >> $LOG

echo "[Digital Damage] Logged event."
