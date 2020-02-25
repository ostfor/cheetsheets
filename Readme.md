```
sudo apt-get install htop curl tmux calibre
sudo apt-get install rsync rclone
sudo apt-get install xautomation xdotool
sudo apt install wget curl git

sudo pip3 install virtualenv

# Handy terminal with F1
sudo apt-get install tilda

# Snap pakages

snap install telegram-desktop  gimp vlc

for p in pycharm-community sublime-text slack skype sublime-merge ; 
do 
  snap install $p --no-wait --classic; 
done

# Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output-document /tmp/google-chrome-stable_current_amd64.deb &&  sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

```
