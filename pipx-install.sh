#!/bin/sh
# Pull and run server hardening playbook for Production Ubuntu Server

sudo apt update

sudo apt install -y pipx
pipx ensurepath

