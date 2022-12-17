#!/bin/bash

#This script was created & tested for Fedora 37 KDE Plasma Spin and will be continously updated and optimized.

#create some folders
mkdir --parents ~/Dokumente/Schule/MINT/Mathematik
mkdir --parents ~/Dokumente/Schule/MINT/Physik
mkdir --parents ~/Dokumente/Schule/MINT/Chemie
mkdir --parents ~/Dokumente/Schule/MINT/Biologie
mkdir --parents ~/Dokumente/Schule/MINT/Informatik
mkdir --parents ~/Dokumente/Schule/Deutsch
mkdir --parents ~/Dokumente/Schule/Englisch
mkdir --parents ~/Dokumente/Schule/Spanisch 
mkdir --parents ~/Dokumente/Schule/Geschichte
mkdir --parents ~/Dokumente/Schule/Geografie
mkdir --parents ~/Dokumente/Schule/Musik
mkdir ~/Bilder/wallpaper
mkdir ~/Projekte

#cp ff add-pns
cp -rf extensions ~/.mozilla/firefox/*-release
cp -rf prefs.js ~/.mozilla/firefox/*-release
cp -rf kitty
#remove KDE bloat
sudo dnf remove -y bismuth dragonplayer kaddressbook dnfdragora gwenview khelpcenter kmail kmouth sieveeditor kolourpaint korganizer  

#add rpm-fusion
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#add keys
sudo rpm --import https://static.geogebra.org/linux/office@geogebra.org.gpg.key 
wget https://mullvad.net/media/mullvad-code-signing.asc
gpg --import mullvad-code-signing.asc

#update
sudo dnf update -y

#install good software
sudo dnf install -y \
 minetest syncthing syncthing-tools ardour7 obs-studio git krita neovim neofetch mpv ktorrent lutris keepassxc cargo rust youtube-dl libreoffice-langpack-en libreoffice-langpack-de libreoffice-langpack-es libreoffice-TexMaths blender foliate blender foliate wireshark torbrowser-launcher dnf-plugins-core kitty fgrun
 sudo dnf group install --with-optional virtualization -y
 sudo dnf install http://www.geogebra.net/linux/rpm/x86_64/geogebra-classic-6.0.659.0-202108101226.x86_64.rpm 
 wget --content-disposition https://mullvad.net/download/app/rpm/latest 
 sudo dnf install -y MullvadVPN-*.rpm
 sudo systemctl enable libvirtd
 sudo systemctl enable syncthing@$USER.service
 
rm -rf MullvadVPN-*.rpm
rm -rf geogebra-classic-*.rpm

#remove software
sudo dnf remove -y
sudo fc-cache -f -v

#cp ff add-pns
cp -rf extensions ~/.mozilla/firefox/*-release
cp -rf prefs.js ~/.mozilla/firefox/*-release

#reboot
sudo dnf remove -y konsole
echo "Your system is now nice and cozy, have a nice day $USER. Your systems gonna reboot."
sleep 5
sudo systemctl reboot
