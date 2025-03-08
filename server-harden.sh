#!/bin/sh

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
                --extra-vars "sudouser=$1 username=$2 upwd=$3 rpwd=$4 timezone=$5 ctrl_ip=$6 ctrl_url=$7 ctrl_url_short=$8"


