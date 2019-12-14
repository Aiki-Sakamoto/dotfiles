#!/bin/bash

# yum update
sudo apt update -y
sudo apt upgrate -y

# develop env tools
sudo apt install -y wget curl ssh screen whois zip unzip vim rdiff-backup rsync git tig subversion bc bash-completion

# From https://github.com/rbenv/ruby-build/wiki#suggested-build-environment
# Depending on your version of Ubuntu/Debian/Mint, libgdbm5 won't be available. In that case, try with libgdbm3.
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

# develop tools for ruby on rails app dependency
curl -sL https://dev.nodesource.com/setup_8.x | sudo -E bash -
sudo apt install -y node.js

# download postgresql
# リポジトリ追加
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
# 信頼キー登録
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update -y
sudo apt install -y postgresql

# 日本語環境インストール
sudo apt install language-pack-ja
# 日本語環境有効化
sudo update-locale LANG=ja_JP.UTF-8
# timezoneを日本にする
sudo dpkg-reconfigure tzdata

