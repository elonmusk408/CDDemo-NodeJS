#!/bin/bash

# This script is executed before copying the source

apt -y update

sudo apt install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
sudo apt install nodejs -y 

npm install -g pm2
pm2 update

export app_root=/usr/cddemo
if [ -d "$app_root" ];then
    rm -rf /usr/cddemo
    mkdir -p /usr/cddemo
else
    mkdir -p /usr/cddemo
fi

