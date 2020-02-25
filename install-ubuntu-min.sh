echo "Install system packages..."

sudo apt-get install htop curl tmux calibre
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y
sudo apt-get install rsync rclone
sudo apt-get install xautomation xdotool
sudo apt install wget curl 

echo "Install pip packages..."
sudo pip3 install virtualenv

# NeoVim

echo "Install NeoVim ..."
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
cd ~
mkdir -p .config/nvim
