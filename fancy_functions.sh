#!/bin/bash

gco() {
    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        echo "Error no Git repository."
        return 1
    fi


    local branch_name=$(git branch --show-current)


    if [ -z "$1" ]; then
        echo "Usage: gco \"commit message\""
        return 1
    fi

    # Format
    local full_message="[$branch_name] $1"
    git commit -m "$full_message"
}
