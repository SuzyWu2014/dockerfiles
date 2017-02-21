#!/bin/bash

yum -y install sudo
yum -y install unzip
yum -y install which
yum -y install git
yum -y install java-1.7.0-openjdk-devel
yum -y install wget

# install gradle
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
cp /home/config ~/.sdkman/etc/config
sdk install gradle

# install consul
mkdir /tmp/bin
cd /tmp/bin
wget https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_linux_amd64.zip
wget https://releases.hashicorp.com/consul/0.7.0/consul_0.7.0_web_ui.zip
unzip consul_0.7.0_web_ui.zip
unzip consul_0.7.0_linux_amd64.zip
rm *.zip

mkdir /var/consul
mkdir /home/data
mkdir -p /home/consul/www
mkdir -p /etc/consul.d/{server,bootstrap}
mv consul /usr/local/bin/
mv index.html /home/consul/www/
mv static/ /home/consul/www/