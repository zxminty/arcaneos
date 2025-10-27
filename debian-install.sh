#!/bin/bash

# remove snapd
sudo apt purge snapd -y
sudo rm -rf /var/cache/snapd/ /snap /var/snap /var/lib/snapd ~/snap
sudo apt autoremove --purge -y
sudo apt update

# install git
sudo apt install git -y

# install curl
sudo apt install curl -y

# install flatpak
sudo apt install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install flatpak apps
flatpak install flathub org.gnome.Tweaks -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub io.github.realmazharhussain.GdmSettings -y
flatpak install flathub io.github.zen_browser.zen -y
flatpak update -y

# install WhiteSur icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
sudo ./install.sh
cd ..
rm -rf WhiteSur-icon-theme

# install Orchis grey theme
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
sudo ./install.sh -c grey
cd ..
rm -rf Orchis-theme

# set GTK theme and icons
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-dark-grey"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"

# install gnome extensions
gnome-extensions install blur-my-shell@auntex.github.com && gnome-extensions enable blur-my-shell@auntex.github.com
gnome-extensions install bluetooth-battery@maniacx.github.com && gnome-extensions enable bluetooth-battery@maniacx.github.com
gnome-extensions install user-avatar@gnome-shell-extension.github.com && gnome-extensions enable user-avatar@gnome-shell-extension.github.com
gnome-extensions install places-menu@gnome-shell-extension.github.com && gnome-extensions enable places-menu@gnome-shell-extension.github.com
gnome-extensions install apps-menu@gnome-shell-extension.github.com && gnome-extensions enable apps-menu@gnome-shell-extension.github.com
gnome-extensions install system-monitor@gnome-shell-extension.github.com && gnome-extensions enable system-monitor@gnome-shell-extension.github.com
