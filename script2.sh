#!/bin/bash
# Script 2: Python Installation Checker

echo "Checking Python..."

if command -v python3 >/dev/null 2>&1
then
    echo "Python is installed ✅"
    python3 --version
else
    echo "Python is NOT installed ❌"
fi

echo "----------------------------------"

case "python3" in
    python3)
        echo "Python is open-source and supports multiple domains like AI, web, and automation."
        ;;
    *)
        echo "No info available."
        ;;
esac
