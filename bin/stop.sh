#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; cd $DIR; cd ..

source bin/config

pm2 stop $PM2_NAME || true
