-------------------------------------------------------------------------------------------------------------------------------------------------
# arcaneos
arcane os was built by @notzxminty this project is opensource all operations done to the operating system before published are documented below
based on ubuntu-gnome 47+ also works with debian 13-gnome 47+
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
# arcaneos
arcane os was built by @notzxminty this project is opensource all operations done to the operating system before published are documented below
based on fedora-gnome 47+ also works with rhel-gnome 47+
-------------------------------------------------------------------------------------------------------------------------------------------------
# install for fedora/rhel
# install google chrome
# Add the Google Chrome repository
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable -y

# remove snapd (if installed, Fedora doesn't typically come with it by default)
sudo dnf remove snapd -y

# install flatpak and flathub
# flatpak is usually installed by default on Fedora, but we ensure it and add Flathub.
sudo dnf install flatpak -y
# Add Flathub remote - already configured by default on recent Fedoras, but harmless to run
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install flatpak apps
flatpak install flathub org.gnome.Tweaks -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub io.github.realmazharhussain.GdmSettings -y
flatpak update -y

# install git (required for themes)
sudo dnf install git -y

# install WhiteSur icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
sudo ./install.sh
cd ..
rm -rf WhiteSur-icon-theme # Clean up the directory

# install Orchis grey theme
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
sudo ./install.sh -c grey
cd ..
rm -rf Orchis-theme # Clean up the directory

# set GTK theme and icons
gsettings set org.gnome.desktop.interface gtk-theme "Orchis-dark-grey"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"
-------------------------------------------------------------------------------------------------------------------------------------------------
made by @zxmintyofficial this project is opensource
