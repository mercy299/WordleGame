#!/bin/bash

# Execute the Python program and capture its output
output=$(python read.py)

# Print the captured output
echo "$output"

# if [[ $output == *"$phrase_to_search"* ]]; then
#     echo "The phrase '$phrase_to_search' was found in the output."
# else
#     echo "The phrase '$phrase_to_search' was not found in the output."
# fi