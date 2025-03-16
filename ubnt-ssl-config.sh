#!/bin/bash

sudo apt update && sudo apt install certbot python3-certbot-apache -y
sudo certbot --apache --email $1 --no-eff-email -d $2
sudo wget https://raw.githubusercontent.com/BCL-FOSS/Linux-Utils/refs/heads/main/unifi_ssl_deb_import.sh -O /usr/local/bin/unifi_ssl_deb_import.sh
sudo chmod +x /usr/local/bin/unifi_ssl_deb_import.sh
# sudo nano -w /usr/local/bin/unifi_ssl_deb_import.sh
sudo /usr/local/bin/unifi_ssl_deb_import.sh $2