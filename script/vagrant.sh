#!/bin/bash

sudo locale-gen en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y nginx python-software-properties git openjdk-7-jdk g++

sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
sudo add-apt-repository 'deb [arch=amd64,i386] http://ftp.ddg.lth.se/mariadb/repo/10.0/debian jessie main'

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password test123123'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password test123123'
sudo apt-get install -y mariadb-server libmariadbclient-dev

#rvm
su - vagrant -c 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'
su - vagrant -c 'curl -sSL https://get.rvm.io | bash -s stable'
su - vagrant -c 'rvm install 2.1.4'
su - vagrant -c 'rvm install 2.1.4'
su - vagrant -c 'rvm use 2.1.4 --default'
su - vagrant -c 'gem install bundler'
