echo "Install packages #1..."

sudo apt-get install htop curl tmux
sudo apt-get install rsync rclone
sudo apt install wget curl 

echo "Install packages #2..."
sudo apt-get install git python3 python3-pip ack-grep -y

echo "Install pip packages..."
sudo pip3 install virtualenv

echo "Install packages #3..."
sudo apt-get install fuse libfuse2
sudo apt-get install xautomation xdotool


# NeoVim

echo "Install NeoVim ..."
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
cd ~
mkdir -p .config/nvim
