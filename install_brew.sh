#!/bin/bash

if [[ ! -e /usr/local/bin/brew ]]; then
    # https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/

    HOMEBREW_CORE_GIT_REMOTE=https://github.com.cnpmjs.org/Homebrew/homebrew-core.git /bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/Homebrew/install@master/install.sh | sed 's/https:\/\/github.com\/Homebrew\/brew/https:\/\/github.com.cnpmjs.org\/Homebrew\/brew.git/g' )" < /dev/null

    # tap cask 
    echo ""
    brew tap homebrew/cask https://github.com.cnpmjs.org/Homebrew/homebrew-cask.git

    # Change source
    git -C "$(brew --repo)" remote set-url origin https://github.com.cnpmjs.org/Homebrew/brew.git
    git -C "$(brew --repo homebrew/core)" remote set-url origin https://github.com.cnpmjs.org/Homebrew/homebrew-core.git
    git -C "$(brew --repo homebrew/cask)" remote set-url origin https://github.com.cnpmjs.org/Homebrew/homebrew-cask.git

    export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles


    brew install `python read_json.py brew_install`
    brew cask install `python read_json.py brew_cask_install`

else
    echo "You have installed brew"
fi