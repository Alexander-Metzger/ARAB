#!/bin/bash

#update
sudo dnf  update -y && sudo dnf upgrade -y

#add repositories
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf config-manager --add-repo https://dl.jami.net/nightly/fedora_36/jami-nightly.repo

#remove bloat
sudo dnf remove kmahjongg kmines kmouth kolourpaint okular kcharselect gnome-abrt khelpcenter kmail

#install software
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo dnf install kbackup mpv mediawriter ktorrent asunder lutris neovim mullvad-vpn youtube-dl libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths OpenAudible jami openshot blender cura tnftp hashcat audacity gimp inkscape

#connect to mullvad 
mullvad account login 3474947215549241
mullvad obfuscation
mullvad connect

