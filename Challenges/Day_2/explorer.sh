#!/bin/bash

# Part 1: File and Directory Exploration
echo "Welcome to the Interactive File and Directory Explorer!"
echo
echo "Files and Directories in the Current Path:"
ls -lh | awk ' 
    function human_readable(size) {
    suffixes = "KMGT"
    for (i = 1; size >= 1024 && i <= length(suffixes); i++) {
        size /= 1024
    }

    # Calculate the decimal part
    decimal = size - int(size)

    # Round up if the decimal part is greater than 0.5
    if (decimal > 0.5) {
        size = int(size) + 1
    } else {
        size = int(size)
    }

    return size substr(suffixes, i, 1)
}

    
    {print "- " $9 " (" human_readable($5) "B)"}'
'
echo

# Loop for Part 2: Character Counting
while true; do
    read -p "Enter a line of text (Press Enter without text to exit): " input
    if [[ -z "$input" ]]; then
        echo "Exiting the Interactive Explorer. Goodbye!"
        break
    else
        char_count=$(echo -n "$input" | wc -m)
        echo "Character Count: $char_count"
        word_count=$(echo -n "$input" | wc -w)
        echo "Word Count: $word_count"

    fi
done
