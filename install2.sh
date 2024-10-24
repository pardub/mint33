#!/bin/zsh -xev

mkdir -p ~/.ssh/config

# +---------+
# | Install |
# +---------+

# Tools for Emacs compiling
sudo add-apt-repository -y  ppa:ubuntu-toolchain-r/ppa

sudo apt update -y
sudo apt upgrade -y
echo "$USER ALL=(ALL:ALL) ALL" | sudo EDITOR='tee -a' visudo
echo "Defaults:$USER timestamp_timeout=120" | sudo EDITOR='tee -a' visudo

# Add dns from https://dns.watch/
sudo echo 'nameserver 84.200.69.80' | sudo tee -a /etc/resolv.conf
sudo echo 'nameserver 84.200.70.40' | sudo tee -a /etc/resolv.conf

# Install automatically security updates
sudo apt install unattended-upgrades -y

# INSTALL JETBRAINS MONO FONTS IN ~/.local/share/fonts
mkdir -p /usr/share/fonts/jetbrains
cd /tmp
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip
sudo unzip /tmp/JetBrainsMono.zip -d /usr/share/fonts/jetbrains
fc-cache -v
cd || exit

# +--------------------+
# | Python virtual Env |
# +--------------------+

# +------------------------------+
# | Set up virtual environments  |
# +------------------------------+

mkdir -p $HOME/virtual_env/shared_libs/
python3 -m venv $HOME/virtual_env/shared_libs/
source $HOME/virtual_env/shared_libs/bin/activate

mkdir -p $HOME/virtual_env/global_env/
python3 -m venv $HOME/virtual_env/global_env
source $HOME/virtual_env/global_env/bin/activate
