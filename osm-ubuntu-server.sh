# virtualbox prep
# sudo apt update
# sudo apt install build-essential linux-headers-generic dkms
# sudo rcvboxadd setup
# sudo poweroff

# sudo mount /dev/sr0 /mnt
# cd /mnt
# ls -lh
# sudo bash VBoxLinuxAdditions.run
# sudo reboot

# install ly desktop manager
# https://github.com/nullgemm/ly
# sudo apt install git
# sudo apt install make
# sudo apt install gcc
# make sure to uncomment deb-src from /etc/apt/sources.list
# sudo apt install libpam0g-dev
# sudo apt install libx11-dev

# git clone https://github.com/nullgemm/ly.git
# cd ly
# make github
# make

# sudo make install

# Install i3
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2020.02.03_all.deb keyring.deb SHA256:c5dd35231930e3c8d6a9d9539c846023fe1a08e4b073ef0d2833acd815d80d48
dpkg -i ./keyring.deb
echo "deb https://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update
# apt install i3