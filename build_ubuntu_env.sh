if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

mkdir tempInstall
cd tempInstall

# Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# mvn
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# steam
wget http://repo.steampowered.com/steam/archive/precise/steam_latest.deb
sudo dpkg -i steam_latest.deb

# gnome tweaks
sudo add-apt-repository ppa:ricotz/testing -y
sudo add-apt-repository ppa:gnome3-team/gnome3-staging -y
sudo add-apt-repository ppa:gnome3-team/gnome3 -y
sudo apt-get update -y
sudo apt-get install gnome-tweak-tool -y

# SNAPs
sudo snap install code --classic 
sudo snap install plexmediaserver
sudo snap install slack --classic
sudo snap install gimp
sudo snap install go
sudo snap install ngrok
sudo snap install docker
sudo snap install htop

# kubernetes
sudo snap install kubectl --classic

# Apts
sudo apt install at -y
sudo apt install flameshot -y
sudo apt install curl -y
sudo apt install npm -y
sudo apt install maven -y
sudo apt install python3 -y
sudo apt install python-pip -y
sudo apt install git -y
sudo apt install default-jdk  -y
sudo apt install openssh-server  -y
sudo apt install postgresql -y
sudo apt install postgresql-contrib -y
sudo apt install arduino -y
sudo apt install arduino-core -y 
sudo apt install vlc -y
sudo apt install pgadmin3 -y 
sudo apt install -y libgtop-2.0-11
sudo apt install gir1.2-clutter-1.0 gir1.2-clutter-gst-3.0 gir1.2-gtkclutter-1.0 -y
sudo apt install gir1.2-gtop-2.0 -y
sudo apt install gdebi-core -y
sudo apt install virtualbox -y
sudo apt install virtualbox-ext-pack -y
sudo apt install virtualbox-qt -y
sudo apt install flatpak -y
sudo apt install kazam -y
sudo apt install blueman - y
sudo apt install -f -y
sudo apt install yad -y
sudo apt install git-flow -y
sudo apt install python3-pip -y
sudo apt install apcalc -y
sudo apt install tilix

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

#Kazam
sudo apt-add-repository ppa:sylvain-pineau/kazam -y
sudo apt-get update -y
sudo apt-get install kazam -y 

# Temas Arcs
sudo add-apt-repository ppa:daniruiz/flat-remix -y
sudo add-apt-repository ppa:noobslab/themes -y
sudo apt-get update
sudo apt-get install arc-theme flat-remix  -y

# piper
sudo apt install ratbagd
sudo apt-add-repository ppa:libratbag-piper/piper-libratbag-git
sudo apt install piper -y

# Scala

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
sudo apt-get update
sudo apt-get install sbt

# Spark
# https://computingforgeeks.com/how-to-install-apache-spark-on-ubuntu-debian/

reboot
