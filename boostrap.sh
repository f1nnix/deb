###############
# Debian 8
###############

install () {
   wget $1
   FILENAME=$(basename "$1")
   # echo $FILENAME
   dpkg -i $FILENAME
   rm $FILENAME
}

# common
# chrome
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
apt-get -y update && sudo apt-get -y install google-chrome-stable

# sublime
install https://download.sublimetext.com/sublime-text_build-3126_amd64.deb

# libreoffice
aptitude update
aptitude install libreoffice

# filezilla
apt-get -y install filezilla

# personal
# amarok
apt-get -y install amarok

# mplayer
apt-get -y install gnome-mplayer

# vlc
apt-get -y install vlc

## work
### slack
install https://downloads.slack-edge.com/linux_releases/slack-desktop-2.2.1-amd64.deb

### skype
dpkg --add-architecture i386
aptitude update
aptitude install libc6:i386 libqt4-dbus:i386 libqt4-network:i386 libqt4-xml:i386 libqtcore4:i386 libqtgui4:i386 libqtwebkit4:i386 libstdc++6:i386 libx11-6:i386 libxext6:i386 libxss1:i386 libxv1:i386 libssl1.0.0:i386 libpulse0:i386 libasound2-plugins:i386
wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
dpkg -i skype-install.deb
rm skype-install.deb
