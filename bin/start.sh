#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; cd $DIR; cd ..

source bin/config

if [ ! -z "$DEPLOYMENT_GROUP_NAME" ]; then
  export NODE_ENV=$DEPLOYMENT_GROUP_NAME
fi

pm2 -f start $JS_SCRIPT -n $PM2_NAME -i 0
pm2 list
