#!bin/bash


echo "Install Golang GVM"
sudo apt-get install curl git mercurial make binutils bison gcc build-essential -y
curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash -s 
source ${HOME}/.gvm/scripts/gvm

echo "SET Machine Version to GO 1.4"
echo "REPLACE THIS CODE IF YOU WANT INSTALL OLD / NEWER"
gvm install go1.4
gvm use go1.4 [--default]
