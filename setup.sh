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
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:/polslinux:/otpclient/Fedora_36/home:polslinux:otpc
lient.repo

sudo dnf update -y

#remove bloat
sudo dnf remove thunar nano -y

#install software
wget https://github.com/openaudible/openaudible/releases/download/v3.5.9/OpenAudible_3.5.9_x86_64.rpm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo dnf install \
  krita ardour6 blender neovim neofetch mpv openshot obs-studio jami youtube-dl cura qemu virt-manager virt-backup virt-install mediawriter asunder rpmbuild git bsdtar veracrypt lutris vorta keepassxc otpclient -y
sudo dnf install hashcat openssh wireshark qbittorrent vche compton alacritty wireguard-tools -y
sudo dnf install libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths -y
sudo dnf install OpenAudible_3.5.9_x86_64.rpm -y
sudo dnf group install --with-optional virtualization -y

#connect to mullvad 
mullvad account login 
mullvad connect

#fetch
sudo systemctl enable libvirtd
clear
exit 2
