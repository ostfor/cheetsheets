bash ./install-ubuntu-min.sh

# Handy terminal with F1

echo "Install gui tools..."

sudo apt install -y tilda calibre
sudo apt install -y telegram-desktop
sudo apt install -y vlc sublime-merge sublime-text

# Snap pakages

echo ">> Music..." 
snap install spotify --no-wait --classic;

echo ">> Drawing..." 
snap install gimp inkscape --no-wait --classic;

echo ">> Meeting..." 
snap install zoom-client --no-wait --classic; 
snap install slack --no-wait --classic;
snap install skype --no-wait --classic;

echo ">> Task tracker..." 
snap install todoist --no-wait --classic;

echo ">> Dev tools..." 
snap install pycharm-community --no-wait --classic; 
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest

echo ">> DL tools..." 
snap install netron --no-wait --classic;

# Chrome

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output-document /tmp/google-chrome-stable_current_amd64.deb &&  sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

