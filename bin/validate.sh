#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; cd $DIR; cd ..

source bin/config

sleep 5
curl -s http://127.0.0.1:$PORT > /dev/null
