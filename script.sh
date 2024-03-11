#!/bin/bash

git log --since="2024-03-11 21:40:00" --until="2024-03-11 21:50:00"



# Get the commit IDs from git log
commit_ids=$(git log --since="2024-03-11 21:40:00" --until="2024-03-11 21:50:00" --format="%h")

# Display the commit IDs
echo "Choose a commit to reset to:"

# Iterate over the commit IDs and display them
echo "$commit_ids" | while read -r commit_id; do
    echo "$commit_id"
done

# Prompt user to choose a commit
read -p "Enter the commit ID to reset to: " commit

# Perform git reset --soft
git reset --soft $commit

# Optionally, you can display the status after the reset
git status
