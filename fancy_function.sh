gco() {
    # Check if inside git repo
    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        echo "Error: Not a git repository"
        return 1
    fi

    # Check if message provided
    if [ -z "$1" ]; then
        echo "Usage: gco 'your commit message'"
        return 1
    fi

    # Get current branch
    branch=$(git branch --show-current)
