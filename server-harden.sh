#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
                --extra-vars "sudouser=$SUDOUSER ctrl_ip=$IP ssh_pub_key=$PUBKEY user_ssh_pub_key=$USERPUBKEY user=$USERNAME user_passwd=$USERPWD root_passwd=$ROOTPWD"


