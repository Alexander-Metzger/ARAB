#!/bin/bash

#This script was created & tested for Fedora 37 KDE Plasma Spin and will be continously updated and optimized.

#create some folders
mkdir ~/Bilder/wallpaper
mkdir ~/Dokumente/Schule
mkdir ~/Dokumente/ePub
mkdir ~/Musik/Kommunismus
mkdir ~/Projekte

#debloat


#add rpm-fusion
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#update
sudo dnf update -y

#install good software
sudo dnf install \
 ardour7 obs-studio git krita neovim neofetch mpv ktorrent lutris keepassxc kitty cargo rust youtube-dl libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffigpack-en libreoffice-TexMaths blender foliate wirce-TexMaths blender foliate wireshark torbrowser-launcher dnf-plugins-core -y

 sudo dnf group install --with-optional virtualization -y
 sudo rpm --import https://static.geogebra.org/linux/office@geogebra.org.gpg.key 
 sudo dnf install http://www.geogebra.net/linux/rpm/x86_64/geogebra-classic-6.0.659.0-202108101226.x86_64.rpm 
 wget --content-disposition https://mullvad.net/download/app/rpm/latest
 sudo dnf install -y MullvadVPN-*.rpm

#sudo systemctl enable libvirtd
rm -rf MullvadVPN-*.rpm
rm -rf geogebra-classic-*.rpm

#remove software
sudo dnf remove -y
sudo fc-cache -f -v

#cp ff add-pns
cp -rf /addons ~/.mozilla/firefox/*-release
cp -rf prefs.js ~/.mozilla/firefox/*-release

#reboot
echo "Your system is now nice and cozy, have a nice day $USER. Consider to reboot."
sleep 5
sudo systemctl reboot
