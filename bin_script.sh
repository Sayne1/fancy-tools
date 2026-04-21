#!/bin/bash
# Move to the repo directory
cd ~/src/fancy_tools || exit 1

current_branch=$(git branch --show-current)

if [ "$current_branch" != "main" ]; then
    echo "Error: Not on main branch. Switch to main to update."
    exit 1
fi

echo "Updating Fancy Tools..."
git pull origin main

# Ensure ~/bin exists and copy the script
mkdir -p ~/bin
cp bin/updateFancyTools ~/bin/
chmod +x ~/bin/updateFancyTools

echo "Update complete."
