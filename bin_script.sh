#!/bin/bash

cd ~/src/fancy_tools || exit
current_branch=$(git branch --show-current)

if [ "$current_branch" != "main" ]; then
    echo "Error: Not on main branch"
    exit 1 # exit with error 
fi

git pull
cp bin/updateFancyTools ~/bin/
chmod +x ~/bin/updateFancyTools
