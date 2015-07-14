#!/bin/bash
# Need swap
# http://askubuntu.com/questions/286476/cant-install-mariadb-5-5-or-10-in-ubuntu-12-04-mysqld-failed-to-start
# https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-12-04

#apt-get install python-software-properties
apt-get update
apt-get install -y software-properties-common
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
add-apt-repository 'deb http://ftp.osuosl.org/pub/mariadb/repo/10.0/ubuntu trusty main'
apt-get update
apt-get install -y mariadb-server-10.0
