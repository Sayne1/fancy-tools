# Fancy Tools

A collection of Bash aliases and scripts to automate your Git workflow.

---

# Full Installation Guide

Follow **these steps in order** to install Fancy Tools.

---

## 1. Clone the Repository

Create a source folder, clone the repository, and move into it.

```bash
mkdir -p ~/src
git clone https://github.com/<your-username>/fancy_tools.git ~/src/fancy_tools
cd ~/src/fancy_tools
```

---

## 2. Check Repository Files

Verify the files exist:

```bash
ls
```

You should see:

```
install.sh
.aliases
fancy_functions.sh
updateFancyTools
README.md
```

---

## 3. Grant Execution Permission

Make the installer executable:

```bash
chmod +x install.sh
```

---

## 4. Run the Installer

This script will:

- Backup your `.bashrc`
- Create `~/bin`
- Copy scripts
- Configure PATH
- Enable aliases

Run:

```bash
./install.sh
```

---

## 5. Reload Your Shell

Activate the commands immediately:

```bash
source ~/.bashrc
```

You can also close and reopen your terminal.

---

# Verify Installation

Test Git status shortcut:

```bash
gss
```

Test smart commit:

```bash
gco "test commit"
```

---

# Usage Guide

## Git Shortcuts

These aliases simplify common Git commands:

```
gss  → git status
gpl  → git pull
gpu  → git push
gap  → git add .
```

---

## Smart Commit

The `gco` command automatically prefixes your branch name.

Example:

```bash
gco "added new feature"
```

If you are on branch `dev`, the commit becomes:

```
[dev] added new feature
```

---

#  Updating Fancy Tools

To update the tools:

```bash
updateFancyTools
```

This command:

- Goes to repo directory
- Checks branch
- Pulls updates
- Reloads shell

---

# Project Structure

```
fancy_tools/
│
├── install.sh
├── .aliases
├── fancy_functions.sh
├── updateFancyTools
└── README.md
```

---

# File Descriptions

## install.sh

Installer script that:

- Creates `~/bin`
- Updates `.bashrc`
- Loads aliases
- Configures PATH

---

## .aliases

Contains Git shortcuts:

```
gss
gpl
gpu
gap
```

---

## fancy_functions.sh

Contains smart commit function:

```
gco
```

---

## updateFancyTools

Script used to update Fancy Tools:

```bash
updateFancyTools
```

---

# One-Line Install (Optional)

You can install everything with one command:

```bash
git clone https://github.com/Sayne1/fancy_tools.git ~/src/fancy_tools && cd ~/src/fancy_tools && chmod +x install.sh && ./install.sh && source ~/.bashrc
```

---

# Full Install Example

```bash
mkdir -p ~/src
git clone https://github.com/<your-username>/fancy_tools.git ~/src/fancy_tools
cd ~/src/fancy_tools
chmod +x install.sh
./install.sh
source ~/.bashrc
```

---
