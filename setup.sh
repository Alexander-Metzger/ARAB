#!/bin/bash

#update
sudo dnf  update -y && sudo dnf upgrade -y

#add repositories
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf config-manager --add-repo https://dl.jami.net/nightly/fedora_36/jami-nightly.repo

#remove bloat
sudo dnf remove kmahjongg kmines kmouth kolourpaint okular kcharselect gnome-abrt khelpcenter kmail kpat

#install software
wget https://github.com/mullvad/mullvadvpn-app/releases/download/2022.4/MullvadVPN-2022.4_x86_64.rpm
wget https://github.com/openaudible/openaudible/releases/download/v3.5.9/OpenAudible_3.5.9_x86_64.rpm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo dnf install \ 
 krita gimp inkscape neovim libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths neofetch audacity ardour6 mpv openshot obs-studio ktorrent jami youtube-dl blender cura mangohud lutris qemu virt-manager virt-backup kbackup mediawriter asunder xfburn tnftp hashcat openssh -y
sudo dnf install OpenAudible_3.5.9_x86_64.rpm MullvadVPN-2022.4_x86_64.rpm -y

#connect to mullvad 
mullvad account login 
mullvad connect

 
