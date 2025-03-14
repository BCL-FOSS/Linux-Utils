#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

sudo apt update

sudo apt install -y pipx
pipx ensurepath

# Add pipx bin directory to PATH if not already present
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    export PATH="$HOME/.local/bin:$PATH"
fi

# Install Ansible with dependencies
pipx install --include-deps ansible

# Verify installation
pipx list
ansible --version

#sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
#                --extra-vars "sudouser=$1 ctrl_ip=$2"


