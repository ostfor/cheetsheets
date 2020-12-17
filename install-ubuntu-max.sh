bash ./install-ubuntu-min.sh

# Handy terminal with F1

echo "Install gui tools..."

sudo apt install -y tilda calibre
sudo apt install -y vlc sublime-merge sublime-text
sudo apt install -y nautilus-dropbox

# Mendeley

echo ">> DL tools..." 
MEND_LOC=/tmp/mendeleydesktop-latest.deb
curl -L https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest --output ${MEND_LOC}
sudo apt install -y ${MEND_LOC}

## Snap pakages

snap install netron --no-wait --classic;

echo ">> Music..." 
snap install spotify --no-wait --classic;

echo ">> Drawing..." 
snap install gimp inkscape --no-wait --classic;

echo ">> Meeting..." 
snap install telegram-desktop --no-wait --classic;
snap install zoom-client --no-wait --classic; 
snap install slack --no-wait --classic;
snap install skype --no-wait --classic;

echo ">> Task tracker..." 
snap install todoist --no-wait --classic;

echo ">> Dev tools..." 
snap install pycharm-community --no-wait --classic; 


# Chrome
snap install chromium --no-wait --classic; 

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output-document /tmp/google-chrome-stable_current_amd64.deb &&  sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

