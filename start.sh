#!/bin/bash

#create some folders
mkdir ~/.config/polybar
mkdir ~/.config/nvim
mkdir ~/.config/picom
mkdir ~/.config/rofi
mkdir ~/.config/ranger
mkdir ~/Bilder/wallpaper
mkdir ~/Dokumente/Schule
mkdir ~/Bilder/Memes
mkdir ~/Dokumente/manuals
mkdir ~/Musik/Kommunismus
mkdir ~/Musik/satire

#add rpm-fusion
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#update
sudo dnf update -y

#install good software
sudo dnf install \
 ardour7 obs-studio git krita neovim picom rofi neofetch polybar ranger dunst mpv qbittorrent lutris keepassxc kitty cargo rust youtube-dl libreoffice libreoffice-langpack-de libreoffice-langpack-en libreoffice-TexMaths blender foliate flameshot thunar-archive-plugin thunar-media-tags-plugin thunar-vcs-plugin thunar-volman gtkhash-thunar gtkhash ubertooth wireshark torbrowser-launcher dnf-plugins-core dnf-data rhythmbox mpc unclutter \

 sudo dnf group install --with-optional virtualization -y
 sudo rpm --import https://static.geogebra.org/linux/office@geogebra.org.gpg.key 
 sudo dnf install http://www.geogebra.net/linux/rpm/x86_64/geogebra-classic-6.0.659.0-202108101226.x86_64.rpm 
 wget --content-disposition https://mullvad.net/download/app/rpm/latest
 sudo dnf install -y MullvadVPN-*.rpm

#install nice fonts
tar xf scientifica-v1.2.tar.gz
cp scientifica/ttf/* ~/.local/share/fonts/
#git clone https://github.com/cmvnd/fonts.git
sh fonts/install

#speed up dnf 
#sudo echo fastestmirror=1 >> /etc/dnf/dnf.conf
#sudo echo max_parallel_downloads=10 >> /etc/dnf/dnf.conf
#sudo echo deltarpm=true >> /etc/dnf/dnf.conf

#configure a few pieces of software
cp -f init.vim ~/.config/nvim
rm ~/.config/i3/config
cp config ~/config/i3/
cp std-wallpaper.jpg  ~/Bilder/wallpaper
cp rofi/config ~/.config/rofi
cp rofi/16script.rasi ~/.config/rofi
cp picom.conf ~/.config/picom
cp polybar/config ~/.config/polybar 
cp polybar/launch.sh  ~/.config/polybar
cp polybar/playpause.sh ~/.config/polybar

sudo systemctl enable libvirtd
rm -rf scientifica 
rm -rf MullvadVPN-*.rpm
rm -rf geogebra-classic-*.rpm

#reboot
echo "Your system is now nice and cozy UwU, have a nice day $USER. Your system will reboot soon."
sleep 5
