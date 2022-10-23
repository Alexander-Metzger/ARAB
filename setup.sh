#!/bin/bash

#update
sudo dnf update -y && sudo dnf upgrade -y

#add repositories
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf \
  install https://github.com/rpmsphere/noarch/raw/master/r/rpmsphere-release-36-1.noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf config-manager --add-repo https://dl.jami.net/nightly/fedora_36/jami-nightly.repo
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:jejb1:Element/Fedora_36/home:jejb1:Element.repo
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:/polslinux:/otpclient/Fedora_36/home:polslinux:otpclient.repo

sudo dnf update -y

#remove bloat
#sudo dnf remove kmahjongg kmines kmouth kolourpaint okular kcharselect gnome-abrt khelpcenter kmail kpat dragonplayer akregator gwenview korganizer -y
sudo dnf remove xfce4-terminal

#install software
wget https://github.com/openaudible/openaudible/releases/download/v3.5.9/OpenAudible_3.5.9_x86_64.rpm
wget https://github.com/Revolutionary-Games/Thrive-Launcher/releases/download/v1.3.2/thrive-launcher-1.3.2.x86_64.rpm
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo dnf install \
  inkscape krita audacity ardour6 mpv blender neovim libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths neofetch openshot obs-studio qbittorrent jami youtube-dl cura virt-install asunder hashcat openssh git bsdtar veracrypt lutris vorta keepassxc otpclient wireguard-tools -y
sudo dnf install polybar alacritty blueman flameshot rofi feh lxappearance asciiquarium cmatrix gpick filezilla papirus-icon-theme nitrogen rzip -y
git clone https://github.com/PapirusDevelopmentTeam/papirus-folders.git
cd papirus-folders
./papirus-folders -t ePapirus -C violet

sudo dnf install OpenAudible_3.5.9_x86_64.rpm thrive-launcher-1.3.2.x86_64.rpm -y
sudo dnf group install --with-optional virtualization -y
sudo rpm --import https://static.geogebra.org/linux/office@geogebra.org.gpg.key
sudo dnf install http://www.geogebra.net/linux/rpm/x86_64/geogebra-classic-6.0.659.0-202108101226.x86_64.rpm -y

#fetch
sudo systemctl enable libvirtd
clear
sleep 3
exit 1 
