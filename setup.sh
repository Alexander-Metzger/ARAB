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
sudo dnf install \ 
 krita gimp inkscape nvim libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths audacity ardour6 mpv openshot obs-studio ktorrent jami youtube-dl blender cura mangohud lutris qemu virt-manager virt-backup kbackup mediawriter asunder xfburn tnftp hashcat openssh reaver

#add good rss feeds
akregator -a https://www.derstandard.at/rss
akregator -a https://www.sciencedaily.com/rss/computers_math.xml
akregator -a https://www.sciencedaily.com/rss/space_time/asteroids,_comets_and_meteors.xml
akregator -a https://www.sciencedaily.com/rss/space_time/solar_flare.xml
akregator -a https://www.sciencedaily.com/rss/space_time/dark_matter.xml

#connect to mullvad 
mullvad account login 
mullvad connect

 
