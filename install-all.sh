#!/bin/bash

#Colors

nc='\033[0m'              # Clear Color
black='\033[0;30m'        # Black
red='\033[0;31m'          # Red
green='\033[0;32m'        # Green
yellow='\033[0;33m'       # Yellow
blue='\033[0;34m'         # Blue
purple='\033[0;35m'       # Purple
cyan='\033[0;36m'         # Cyan
white='\033[0;37m'        # White

#aporve install
echo -e "${green}Are You Sure You Want To Install? It May Take Awhile${nc}"
 read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;  
            [Nn]*) echo "Aborted" ; return  1 ;;
        esac

#presetup 
mkdir github-installs

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

echo -e "${green}[+]Installing make${blue}"

apt-get install make

#github installs

cd github-installs

#hatch
echo -e "${green}[+]Installing Hatch${blue}"
git clone https://github.com/nsgodshall/Hatch.git

#evillimiter
echo -e "${green}[+]Installing evillimiter${blue}"
git clone https://github.com/bitbrute/evillimiter.git
cd evillimiter
python3 setup.py install
cd -

#h8mail
echo -e "${green}[+]Installing h8mail${blue}"
git clone https://github.com/khast3x/h8mail.git
cd h8mail
make
make insatll
cd -

#sherlock
echo -e "${green}[+]Installing sherlock${blue}"
git clone https://github.com/sherlock-project/sherlock.git

#H1R0GH057 / Anonymous
echo -e "${green}[+]Installing Anonymous${blue}"
git clone https://github.com/H1R0GH057/Anonymous.git

#StaticPirate / hax0rpi patch-1
echo -e "${green}[+]Installing hax0rpi${blue}"
git clone https://github.com/StaticPirate/hax0rpi.git
cd hax0rpi
rm hax0rpi
wget https://raw.githubusercontent.com/StaticPirate/hax0rpi/patch-1/hax0rpi
./hax0rpi
cd -

#theHarvester
echo -e "${green}[+]Installing theHarvester${blue}"
git clone https://github.com/laramies/theHarvester.git
cd theHavester
pip3 install -r requirements.txt
python3 setup.py install
