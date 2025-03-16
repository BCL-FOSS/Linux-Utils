#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

sudo apt update

sudo apt install -y pipx
pipx ensurepath

# Install Ansible with dependencies

pipx install --include-deps ansible

# Verify installation
pipx list
# ansible --version

#sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
#                --extra-vars "sudouser=$1 ctrl_ip=$2"


