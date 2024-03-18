#!/bin/bash

# Execute the Python program and capture its output
output=$(python3 read.py | tr [:upper:] [:lower:])

# echo $output

regex="[0-9]{4}\/[0-9]{2}\/[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}\s*pending"

apply_migrations_automatically=true


if echo "$output" | grep -qE "$regex"; then
    if $apply_migrations_automatically; then
        echo "Applying migrations"
    else
        echo "Skipping migrations"
    fi
else
    echo "Skipping migrations"
fi
