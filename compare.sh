#!/bin/bash
# Example commit hashes
commit1=845fcfc
commit2=270603c

# Run the commands
dirs=$(git diff --name-only $commit1 $commit2 | grep -v '^\.' | cut -d'/' -f1 | sort | uniq)
dirs=$(echo $dirs | tr '\n' ' ')

# Print the result
echo $dirs
