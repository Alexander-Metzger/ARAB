#!/bin/bash

#update
sudo dnf  update -y && sudo dnf upgrade -y

#add repositories
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf \
  install https://github.com/rpmsphere/noarch/raw/master/r/rpmsphere-release-36-1.noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf config-manager --add-repo https://dl.jami.net/nightly/fedora_36/jami-nightly.repo
dnf config-manager --add-repo https://download.opensuse.org/repositories/home:jejb1:Element/Fedora_36/home:jejb1:Element.repo
sudo dnf update -y

#remove bloat
sudo dnf remove kmahjongg kmines kmouth kolourpaint okular kcharselect gnome-abrt khelpcenter kmail kpat dragonplayer -y

#install software
wget https://github.com/mullvad/mullvadvpn-app/releases/download/2022.4/MullvadVPN-2022.4_x86_64.rpm
wget https://github.com/openaudible/openaudible/releases/download/v3.5.9/OpenAudible_3.5.9_x86_64.rpm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo dnf install \
  inkscape icecat gimp krita audacity ardour6 mpv blender cura neovim libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths neofetch mpv openshot obs-studio ktorrent jami youtube-dl cura qemu virt-manager virt-backup kbackup mediawriter asunder hashcat openssh rpmbuild git bsdtar veracrypt lutris element-desktop vorta keepassxc y
sudo dnf install OpenAudible_3.5.9_x86_64.rpm MullvadVPN-2022.4_x86_64.rpm -y

#connect to mullvad 
mullvad account login 
mullvad connect

#fetch
clear
sleep 2
sudo systemctl reboot
