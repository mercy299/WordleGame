#!/bin/bash

# Execute the Python program and capture its output
python3 read.py ./filename.txt

# # Print the captured output
# # echo "$output"

# if [[ $output == *"Pending. *Applied at"* ]]; then
#     echo "applying migration."
# else
#     echo "skipping migration."
# fi