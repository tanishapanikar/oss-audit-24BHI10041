#!/bin/bash
# Script 1: Python System Overview

echo "===== Python System Overview ====="

echo "User: $(whoami)"
echo "Home Directory: $HOME"
echo "Kernel: $(uname -r)"
echo "OS: $(uname -o)"
echo "Current Date: $(date)"

echo "----------------------------------"
echo "Python Details:"
python3 --version

echo "----------------------------------"
echo "Uptime:"
uptime -p

echo "License Info: Linux uses GPL (Open Source License)"
