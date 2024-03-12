#!/bin/bash

# Execute the Python program and capture its output
output=$(python3 read.py)

# Print the captured output
# echo "$output"

if [[ $output == *"Pending"* ]]; then
    echo "Applying migration..."
else
    echo "Skipping migration."
fi
