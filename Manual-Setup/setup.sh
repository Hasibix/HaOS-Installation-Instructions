# Install Dependencies and Setting up
sudo apt update -y
sudo apt dist-upgrade -y
sudo apt install sddm -y
sudo apt install openbox-gnome-session -y
sudo apt install openbox -y
sudo apt install gnome-terminal -y
sudo apt install obmenu -y
sudo apt install gedit -y
sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt install git -y
sudo apt install unzip -y
sudo apt install nitrogen -y
sudo apt install pcmanfm -y
sudo apt install lxappearance -y
sudo apt install xcompmgr -y
sudo apt install pavucontrol -y
sudo apt install volti -y
sudo apt install gconf-editor -y
 
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
clear
echo "Installation Finished! Rebooting.."
sudo sleep 5 ; reboot
