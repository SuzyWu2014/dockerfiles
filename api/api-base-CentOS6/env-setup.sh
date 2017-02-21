#!/bin/bash

yum -y install sudo
yum -y install unzip
yum -y install which
yum -y install git
yum -y install java-1.7.0-openjdk-devel

# install gradle
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
cp /home/config ~/.sdkman/etc/config
sdk install gradle
