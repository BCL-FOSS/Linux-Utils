# Linux-Utils

### About ###
A collection of Ansible Playbooks and bash scripts for adminstration automation of self hosted Ubiquiti UniFi & TP-Link Omada Network Controllers.

Primarily focused on supporting controllers installed on Ubuntu servers.

SSL import scripts from [Steve Jenkin's unifi-linux-utils unifi_ssl_import.sh](https://github.com/stevejenkins/unifi-linux-utils)

### UniFi Installation Notes ###
1. Run ubnt-install.sh
```bash
    sudo chmod +x ubnt-install.sh
    sudo ./ubnt-install.sh
```
2. Run ubnt-ssl-config.sh
```bash
    # Run ubnt ssl configuration
    sudo chmod +x ubnt-ssl.config.sh
    sudo ./ubnt-ssl-config.sh {{ controller fqdn }}
```

