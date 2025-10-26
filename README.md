# arcaneos
arcane os was built by @notzxminty this project is opensource all operations done to the operating system before published are documented below
based on ubuntu 25.04-gnome 47+ also works with debian 13-gnome 47+
-------------------------------------------------------------------------------------------------------------------------------------------------
# install for debian/ubuntu
# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/chrome.deb
sudo dpkg -i /tmp/chrome.deb
sudo apt -f install -y

# remove snapd
sudo apt purge snapd -y
sudo rm -rf /var/cache/snapd/ /snap /var/snap /var/lib/snapd ~/snap
sudo apt autoremove --purge -y
sudo apt update

# install flatpak and flathub
sudo apt install flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install flatpak apps
flatpak install flathub org.gnome.Tweaks -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub io.github.realmazharhussain.GdmSettings -y
flatpak update -y

# install WhiteSur icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
sudo ./install.sh
cd ..

# install Orchis grey theme
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
sudo ./install.sh -c grey
cd ..

# set GTK theme and icons
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-dark-grey"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"
-------------------------------------------------------------------------------------------------------------------------------------------------
made by @zxmintyofficial this project is opensource
