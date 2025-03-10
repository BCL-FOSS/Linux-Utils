#!/bin/sh
# Pull and run unifi network controller installation playbook for Production Ubuntu Server

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local unifi-install.yml \
                --extra-vars "sudouser=$SUDOUSER"


