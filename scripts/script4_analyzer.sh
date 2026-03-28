#!/bin/bash


LOGFILE=$1 
KEYWORD=${2:-"error"} 
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found." [cite: 176]
    exit 1
fi


while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) 
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE" 


echo "--- Last 5 matching entries ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
