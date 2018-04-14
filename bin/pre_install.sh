#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; cd $DIR; cd ..

source bin/config

apt update

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt install -y nodejs

sudo npm install -g pm2
