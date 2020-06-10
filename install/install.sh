#!/bin/bash

## Update and Upgrade 
echo "***Update and Upgrade ****"
sudo apt update && sudo apt upgrade -y 

echo "Install Pendukung"
sudo apt install gdebi python3-pip youtube-dl -y

echo "Disable Bluetooth"
sudo systemctl disable bluetooth

echo "*** Install Snapd *** " 
sudo apt install snapd -y

echo "*** Install VSCODE***" 
sudo snap install --classic code
sudo snap install atom --classic

echo "Install Code Editor" 
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

echo "Install Media Player"
sudo snap install vlc
sudo apt install smplayer -y 

echo "Install Steam"
sudo apt install steam-installer -y

echo "Install Termius"
sudo snap install termius-app

echo "Install Postman"
sudo snap install postman