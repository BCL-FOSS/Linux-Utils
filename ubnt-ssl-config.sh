#!/bin/sh

curl https://get.acme.sh | sh -s email=bcladmin@baughcl.com
acme.sh --issue --dns dns_cf -d $1

acme.sh --issue --dns dns_cf -d $1

sudo add-apt-repository ppa:certbot/certbot
sudo apt install snapd
sudo snap install core; sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --apache -d $1
sudo certbot -d $1
sudo certbot certonly -d $1

ufw allow 80
sudo certbot certonly -d $1
sudo wget https://raw.githubusercontent.com/BCL-FOSS/Linux-Utils/refs/heads/main/unifi_ssl_deb_import.sh -O /usr/local/bin/unifi_ssl_deb_import.sh
sudo chmod +x /usr/local/bin/unifi_ssl_deb_import.sh
# sudo nano -w /usr/local/bin/unifi_ssl_deb_import.sh
sudo /usr/local/bin/unifi_ssl_deb_import.sh $1