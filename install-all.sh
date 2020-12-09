#!/bin/bash

#Colors

black='\033[0;30m'        # Black
red='\033[0;31m'          # Red
green='\033[0;32m'        # Green
yellow='\033[0;33m'       # Yellow
blue='\033[0;34m'         # Blue
purple='\033[0;35m'       # Purple
cyan='\033[0;36m'         # Cyan
white='\033[0;37m'        # White

#other installs

pip3 install catt

#apt-get installs

echo -e "${green}[+] Installing update${blue}"

apt-get install update
apt-get install upgrade

echo -e "${green}[+]Installing nmap${blue}"

apt-get install nmap

echo -e "${green}[+]Installing netcat${blue}"

apt-get install netcat

echo -e "${green}[+]Installing all python tools${blue}"

sudo apt-get install python
sudo apt-get install python2
sudo apt-get install python3
sudo apt install python3-pip	#pip3
sudo apt-get install python3-setuptools #setuptools of python3
sudo apt-get install python-dev #python3 dev tools
sudo apt-get install libffi-dev
sudo apt-get install python3-dev

#github installs
echo -e "${green}[+]Installing Hatch${blue}"
git clone https://github.com/nsgodshall/Hatch.git

#evillimiter
echo -e "${green}[+]Installing evillimiter${blue}"
git clone https://github.com/bitbrute/evillimiter.git
cd evillimiter
python3 setup.py install
cd -

