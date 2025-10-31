#!/bin/bash
sudo apt purge snapd -y
sudo rm -rf /var/cache/snapd/ /snap /var/snap /var/lib/snapd ~/snap
sudo apt autoremove --purge -y
sudo apt update
sudo apt install git -y
sudo apt install curl -y
sudo apt install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Tweaks -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub io.github.realmazharhussain.GdmSettings -y
flatpak install flathub io.github.zen_browser.zen -y
flatpak update -y
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
sudo ./install.sh
cd ..
rm -rf WhiteSur-icon-theme
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
sudo ./install.sh -t grey
cd ..
rm -rf Orchis-theme
