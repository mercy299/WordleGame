#!/bin/bash

# Execute the Python program and capture its output
output=$(python3 read.py | tr [:upper:] [:lower:])

regex="[0-9]{4}\/[0-9]{2}\/[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}\s*pending"

apply_migrations_automatically=true

# Use a while loop with read to iterate over each line
echo -e "$output" | while IFS= read -r line; do
    # Use grep to check for a match
    if grep -qE "$regex" <<<"$line"; then
        if $apply_migrations_automatically; then
            echo "Applying migrations"
        else
            echo "Skipping migrations"
        fi
    else
        echo "Skipping migrations"
    fi
done