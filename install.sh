#!/bin/bash
set -e

REPO_URL="https://github.com/Sayne1/fancy-tools.git"
SRC_DIR="$HOME/src/fancy_tools"

echo "Starting installation..."

#  Backup bashrc
cp ~/.bashrc ~/.bashrc.bak_$(date +%Y%m%d_%H%M%S)

# Setup Directories
mkdir -p ~/bin
mkdir -p ~/src

# Clone repo if absent
if [ ! -d "$SRC_DIR" ]; then
    git clone "$REPO_URL" "$SRC_DIR"
else
    echo "Repository already exists at $SRC_DIR"
fi

# add lines without duplicates
add_if_missing() {
    grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

# Update .bashrc
add_if_missing 'export PATH="$HOME/bin:$PATH"'
add_if_missing "source $SRC_DIR/.aliases"
add_if_missing "source $SRC_DIR/fancy_functions.sh"

echo "Installation finished : restart your terminal or run"
# defines the path
ALIA_PATH="$HOME/src/fancy_tools/.aliases"


add_if_missing() {
    grep -qF "$1" ~/.bashrc || echo "$1" >> ~/.bashrc
}

# writes the line to .bashrc for future sessions (new terminals)
add_if_missing "source $ALIA_PATH"

# activates the aliases for the current session right now
source "$ALIA_PATH"

echo "Aliases are now active!"
