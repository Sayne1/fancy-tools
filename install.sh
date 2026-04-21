#!/bin/bash

echo "Starting installation..."

# 1. Backup bashrc
echo "Saving backup of .bashrc..."
cp ~/.bashrc ~/.bashrc.bak

# 2. Create bin folder
echo "Creating ~/bin folder..."
mkdir -p ~/bin

# 3. Add ~/bin to PATH
echo "Adding ~/bin to PATH..."
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc

# 4. Add aliases file
echo "Adding aliases..."
echo 'source ~/src/fancy_tools/.aliases' >> ~/.bashrc

# 5. Add functions file
echo "Adding functions..."
echo 'source ~/src/fancy_tools/fancy_functions.sh' >> ~/.bashrc

# 6. Clone repo
echo "Cloning project..."
mkdir -p ~/src
cd ~/src
git clone https://github.com/<your_username>/fancy_tools.git

echo "Installation finished!"
