#!/bin/bash

# Part 1: File and Directory Exploration
echo "Welcome to the Interactive File and Directory Explorer!"
echo
echo "Files and Directories in the Current Path:"
ls -l | awk '
function human_readable(size) {
    suffixes = "BKMGT"
    for (i = 1; size >= 1024 && i <= length(suffixes); i++) {
        size /= 1024
    }
    return sprintf("%.2f", size) substr(suffixes, i, 1)
}
NR > 1 {
    size = human_readable($5);
    print "- " $9 " (" size ")"
}'

echo

# Part 2: Character Counting
while true; do
    read -p "Enter a line of text (Press Enter without text to exit): " input
    if [[ -z "$input" ]]; then
        echo "Exiting the Interactive Explorer. Goodbye!"
        break
    else
        char_count=$(echo -n "$input" | wc -m)
        echo "Character Count: $char_count"
    fi
done


