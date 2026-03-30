#!/bin/bash
# Script 5: Open Source Idea Generator

echo "Answer a few questions:"
echo ""

read -p "Favorite open-source tool: " TOOL
read -p "Meaning of freedom: " FREEDOM
read -p "Project you want to build: " PROJECT

FILE="my_oss_idea.txt"
DATE=$(date)

echo "----- My Open Source Thought -----" > $FILE
echo "Date: $DATE" >> $FILE
echo "" >> $FILE
echo "I believe open source means $FREEDOM." >> $FILE
echo "I use tools like $TOOL in my daily life." >> $FILE
echo "I want to build $PROJECT and share it with everyone." >> $FILE

echo ""
echo "Saved successfully in $FILE"
cat $FILE
