#!/bin/sh
# Pull and run unifi network controller installation playbook for Production Ubuntu Server

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local ubnt-install.yml \
                --extra-vars "sudouser=$SUDOUSER"


sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
                --extra-vars "sudouser=$1 ctrl_ip=$2"