#!/bin/bash

bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/nvm-sh/nvm@0.35.3/install.sh | sed 's/https:\/\/raw.githubusercontent.com\/nvm-sh\/nvm\//https:\/\/cdn.jsdelivr.net\/gh\/nvm-sh\/nvm@/g' | sed 's/https:\/\/github.com\/nvm-sh\/nvm.git/https:\/\/github.com.cnpmjs.org\/nvm-sh\/nvm.git/g' )"

if [ "$1" = "" ]; then 
    nvm install `python read_json.py nodejs_version`
else
    nvm install "$1"
fi