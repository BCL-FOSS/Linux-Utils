#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

ansible_installation() {

    sudo apt update

    if ! command -v pip &> /dev/null; then
        echo "pip not found. Installing..."
        sudo apt install -y python3-pip
    else
        echo "pip is already installed."
    fi

    # Install Ansible using pip
    if ! command -v ansible &> /dev/null; then
        echo "Installing Ansible..."
        pip install --user ansible
        echo "Ansible installation complete."
    else
        echo "Ansible is already installed."
    fi

    # Ensure ~/.local/bin is in PATH if needed
    if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
        echo "Adding ~/.local/bin to PATH"
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
        source ~/.bashrc
    fi
    
}

ansible_installation

ansible --version

#sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
#                --extra-vars "sudouser=$1 ctrl_ip=$2"


