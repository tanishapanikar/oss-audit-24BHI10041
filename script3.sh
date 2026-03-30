#!/bin/bash
# Script 3: Directory Inspector

echo "===== Directory Inspection ====="

DIR_LIST="/etc /home /tmp /usr"

for DIR in $DIR_LIST
do
    if [ -d "$DIR" ]; then
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        DETAILS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        echo "$DIR -> Size: $SIZE | $DETAILS"
    else
        echo "$DIR not found"
    fi
done

echo "----------------------------------"
echo "Checking Python folder..."

if [ -d "/usr/lib/python3" ]; then
    echo "Python directory exists."
    ls -ld /usr/lib/python3
else
    echo "Python directory not found."
fi

