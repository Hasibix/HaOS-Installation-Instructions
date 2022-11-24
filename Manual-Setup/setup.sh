# Install Dependencies and Setting up
sudo apt install lightdm
sudo apt install openbox-gnome-session
sudo apt install openbox
sudo apt install gnome-terminal
sudo apt install obmenu
sudo apt install gedit
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt update
sudo apt dist-upgrade
sudo apt install git
sudo apt install unzip
sudo apt install nitrogen
sudo apt install pcmanfm
sudo apt install lxappearance
sudo apt install xcompmgr
sudo apt install pavucontrol
sudo apt install volti
sudo apt install gconf-editor
 
# Clone Dependencies from GitHub
git clone https://github.com/yilozt/mutter-rounded
git clone https://github.com/KDE/latte-dock
git clone https://github.com/Hasibix/HaDEX-Wallapers
git clone https://github.com/Hasibix/HaOS-System-Apps
 
# Mutter Rounded
cd ./mutter-rounded/ubuntu
./package.sh
sudo dpkg -i libmutter-10-0*.deb mutter-common*.deb
cd ..
sudo rm -rf ./mutter-rounded
 
# Latte Dock
cd ./latte-dock
./install.sh
cd ..
sudo rm -rf ./latte-dock
 
# Clearing up & Wallpaper
sudo mv HaDEX-Wallpapers /usr/share/
cd ./usr/share/HaDEX-Wallpapers
nitrogen --set-auto HaDEX-Def0.png
cd ../../..
# Latte Dock Layout
 
# Menu Bar
 
# Default & System Apps
cd ./HaOS-System-Apps
./install.sh
cd ..
sudo rm -rf ./HaOS-System-Apps
 
# END INSTALLATION OF HAOS
 
echo "Installation Finished! Rebooting.."
sudo sleep 5 ; reboot
