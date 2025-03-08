#!/bin/sh

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local server-harden.yml \
                --extra-vars "instance_id=${INSTANCE_ID} region=${REGION} public_ip=${PUBLIC_IP} hostname=${HOSTNAME} os=${OS}"


