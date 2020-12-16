echo "Install packages #1..."

sudo apt-get update
sudo apt-get install -y openssh-client
sudo apt-get install -y htop curl tmux rsync rclone wget curl

echo "Install packages #2..."
sudo apt-get install -y git python3 python3-pip ack-grep -y

echo "Install pip packages..."
sudo pip3 install virtualenv

echo "Install packages #3..."
sudo apt-get install -y fuse libfuse2
sudo apt-get install -y xautomation xdotool

echo "Enable alt-shift"
dconf write /org/gnome/desktop/input-sources/xkb-options "['grp:alt_shift_toggle']"

echo "Create dev env"
bash create_dev_env.sh
# NeoVim

# echo "Install NeoVim ..."
# wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
# chmod +x nvim
# sudo chown root:root nvim
# sudo mv nvim /usr/bin
# cd ~
# mkdir -p .config/nvim
