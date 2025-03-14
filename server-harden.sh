#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

install_pipx() {

    if ! command -v pipx &> /dev/null; then
        echo "pipx not found. Installing..."
        sudo apt install -y pipx
        pipx ensurepath
    else
        echo "pipx is already installed."
        pipx ensurepath
    fi
}

install_ansible() {

    if ! command -v ansible &> /dev/null; then
        echo "Installing Ansible..."
        pipx install --include-deps ansible
        
        echo "Ansible installation complete."
    else
        echo "Ansible is already installed."
    fi
}

sudo apt update

install_pipx
install_ansible

#sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
#                --extra-vars "sudouser=$1 ctrl_ip=$2"


