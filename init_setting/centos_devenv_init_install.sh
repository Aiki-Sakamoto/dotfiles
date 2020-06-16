#!/bin/sh

# chenge time zone Tokyo
sudo timedatectl set-timezone Asia/Tokyo

# yum update
sudo yum update -y

# install IIS repo and Git newer version
# sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm # 2020/06現在使えない
# そのため、こちらのリポジトリを有効化
sudo yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.7-1.x86_64.rpm
sudo yum -y remove git git-\*
sudo yum install -y git

# tigをインストールするために有効化 # 2020/06現在
sudo yum -y install epel-release.noarch
sudo yum -y install tig

# develop env tools
sudo yum install -y wget curl screen whois zip unzip vim rsync subversion bc bash-completion

# develop tools for ruby on rails app dependency
sudo yum install -y gcc gcc-c++ openssl-devel readline-devel zlib-devel sqlite-devel postgresql-devel node.js npm
