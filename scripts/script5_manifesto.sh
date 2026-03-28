#!/bin/bash


echo "Answer three questions to generate your manifesto." 
echo


read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y') 
OUTPUT="manifesto_$(whoami).txt"


{
    echo "--- MY OPEN SOURCE MANIFESTO ---"
    echo "Generated on: $DATE"
    echo ""
    echo "I believe in the power of open collaboration. Every day, I use $TOOL"
    echo "to solve problems. To me, software freedom is defined by $FREEDOM."
    echo "In the spirit of the community, I commit to building $BUILD"
    echo "and sharing it freely for the benefit of all."
} > "$OUTPUT"

echo "Manifesto saved to $OUTPUT" 
cat "$OUTPUT" 

# Note: You can create an alias for this script using 'alias gen_manifesto="./script5_manifesto.sh"' [cite: 188]
