#! bin/bash

# 以下のように実行する
# RUBY_VER=2.6.5 RAILS_VER=5.2.4 sh ruby_and_rails_env_setting.sh

# 環境変数設定
# ------------------------------------------------------
# Rubyのバージョンを実行時に指定
ruby_version="$RUBY_VER"
# Railsのバージョンを実行時に指定
rails_version="$RAILS_VER"

# ------------------------------------------------------
#rbenvをclone
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

#cloneできたらrbenvのPATHを通す
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

#rbenvが使えるか確認
rbenv --version

#rbenvを使用してRubyをインストール
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

#インストールできるRubyのバージョンを確認する
rbenv install --list

#rubyのバージョンを指定してインストール(例:2.6.5)
rbenv install "${ruby_version}"

#インストールできたら、Rubyを 指定したversion に切り替える
rbenv global "${ruby_version}"
rbenv rehash

#バージョンを確認する
ruby -v

# ------------------------------------------------------
#bundlerのインストール
gem install bundler
rbenv rehash

# ------------------------------------------------------
# Railsのインストール

#バージョン指定してインストール(例:5.2.4)
gem install -v "${rails_version}" rails

#Railsがインストールできたか確認
rails -v