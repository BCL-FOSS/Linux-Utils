#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

sudo apt update

sudo apt install -y pipx
pipx ensurepath

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

pipx list

pipx install --include-deps ansible
pipx ensurepath

#sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
#                --extra-vars "sudouser=$1 ctrl_ip=$2"


