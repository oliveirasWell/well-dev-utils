if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# PSQL -------------------------------------------------------- 
sudo su postgres 
psql postgres  
ALTER USER postgres WITH PASSWORD 'suaSenhaPadrão'; 
\q  
exit 

# AWS
pip3 install awscli --upgrade --user

# driver zuado na nvidia
# sudo echo "\nblacklist peaq-wmi" >> /etc/modprobe.d/blacklist.conf 

# WIFI Mouse server
wget http://wifimouse.necta.us/MouseServerLinux64.zip 
unzip MouseServerLinux64.zip 
sudo gdebi mouseserver-1.0.1-x86_64.deb -n 

# npms
sudo yarn global add nativefier
sudo yarn global add npm
sudo yarn global add bower 
sudo yarn global add gulp-cli 
sudo yarn global add gulp 
sudo yarn global add yarn
sudo yarn global add create-react-app 
sudo yarn global add firebase-tools 
sudo yarn global add expo-cli
sudo yarn global add bumped
sudo yarn global add pwa-asset-generator
sudo yarn global add create-react-library
sudo yarn global add serve
sudo yarn global add bumped
sudo yarn global add bumped-finepack

git config --global user.email "well.oliveira.snt@gmail.com" 
git config --global user.name "Wellington Oliveira"

sudo git clone https://github.com/oliveiraswell/web-search-dialog.git /usr/share/gnome-shell/extensions/web_search_dialog@awamper.gmail.com/

flatpak --user install --from https://linphone.org/flatpak/linphone.flatpakref
