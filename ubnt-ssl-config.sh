#!/bin/sh

acme.sh --issue --dns dns_cf -d $1

acme.sh --issue --dns dns_cf -d $1

sudo apt install snapd
sudo snap install core; sudo snap refresh core
sudo apt install certbot python3-certbot-apache
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --apache -d $1
sudo certbot -d $1
sudo certbot certonly -d $1
sudo wget https://raw.githubusercontent.com/BCL-FOSS/Linux-Utils/refs/heads/main/unifi_ssl_deb_import.sh -O /usr/local/bin/unifi_ssl_deb_import.sh
sudo chmod +x /usr/local/bin/unifi_ssl_deb_import.sh
# sudo nano -w /usr/local/bin/unifi_ssl_deb_import.sh
sudo /usr/local/bin/unifi_ssl_deb_import.sh $1