#!/usr/bin/env bash

# Unifi Repo
sudo apt-get update && sudo apt-get install -y ca-certificates && sudo apt-get install -y apt-transport-https
echo 'deb [ arch=amd64,arm64 ] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg

# Mongo Repo
sudo apt-get install -y gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc |    sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg    --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# Allow necessary ports/Install MongoDB & UniFi Network Controller
ufw allow 8080
ufw allow 8443
ufw allow 80

sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get update && sudo apt-get install -y unifi

# Request SSL Cert
sudo apt-get update &&  sudo apt-get install -y certbot && sudo apt-get install -y python3-certbot-apache
certbot --apache --email "$1" --no-eff-email --agree-tos -n -d "$2" --quiet

sudo ansible-pull -U "https://github.com/BCL-FOSS/Linux-Utils.git" -i localhost, -c local ubnt-ssl-config.yml \
                   --extra-vars "hosturl=$2"

systemctl status unifi

