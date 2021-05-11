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

# Discord

DISCORD_LOC=/tmp/discord-0.0.13.deb
curl -L https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb --output ${DISCORD_LOC}
sudo apt install -y ${DISCORD_LOC}

## Pakage managers

# sudo apt install flatpak
# sudo apt install gnome-software-plugin-flatpak

# Adding repo
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## Snap pakages
#!/usr/bin/env bash

snap install netron --no-wait --classic;

echo ">> Music..." 
snap install spotify --no-wait --classic;

echo ">> Drawing..." 
snap install gimp inkscape --no-wait --classic;

echo ">> Screen capture..." 
snap install simplescreenrecorder --no-wait

echo ">> Meeting..." 
snap install telegram-desktop --no-wait --classic;
snap install zoom-client --no-wait --classic; 
snap install slack --no-wait --classic;
snap install skype --no-wait --classic;

echo ">> Task tracker..." 
snap install todoist --no-wait --classic;

echo ">> Dev tools..." 
snap install pycharm-community --no-wait --classic; 

echo ">>>> Data version control..." 
snap install dvc --no-wait --classic;


# Chrome
snap install chromium --no-wait --classic; 

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output-document /tmp/google-chrome-stable_current_amd64.deb &&  sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

echo "== Configure =="

echo ">> Tilda"

mkdir -p ${HOME}/.config/tilda
cp -R ./config/tilda/* ${HOME}/.config/tilda/

# Upwork 

# Upwork 

Upwork=/tmp/upwork.deb
curl -L https://upwork-usw2-desktopapp.upwork.com/binaries/v5_5_0_11_61df9c99b6df4e7b/upwork_5.5.0.11_amd64.deb --output ${Upwork}
sudo apt install -y ${Upwork}
