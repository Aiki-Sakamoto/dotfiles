#/bin/sh

# chenge time zone Tokyo
sudo timedatectl set-timezone Asia/Tokyo

# yum update
sudo yum update -y

# install IIS repo and Git newer version
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y remove git git-\*
sudo yum install -y git --enablerepo=ius --disablerepo=base,epel,extras,updates

# develop env tools
sudo yum install -y wget curl ssh screen whois libiconv zip unzip vim rdiff-backup rsync tig subversion bc chere bash-completion

# develop tools for ruby on rails app dependency
sudo yum install -y gcc gcc-c++ openssl-devel readline-devel zlib-devel sqlite-devel node.js npm
