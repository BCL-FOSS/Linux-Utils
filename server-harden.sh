#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
                --extra-vars "sudouser=$1 ctrl_ip=$2 ssh_pub_key=$3 user_ssh_pub_key=$4 user=$5 user_passwd=$6 root_passwd=$7"


