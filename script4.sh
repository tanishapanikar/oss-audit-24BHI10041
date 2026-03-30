#!/bin/bash
# Script 4: Error Finder

FILE=$1
WORD=${2:-"error"}
COUNT=0

if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

echo "Searching for '$WORD' in $FILE..."

while read LINE
do
    echo "$LINE" | grep -iq "$WORD"
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT+1))
    fi
done < $FILE

echo "----------------------------------"
echo "Total matches: $COUNT"

echo "Last 5 results:"
grep -i "$WORD" $FILE | tail -5
