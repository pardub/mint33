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
mkdir -p "$HOME"/.local/share/fonts/nerd-fonts
cd /tmp
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.2/JetBrainsMono.zip
#sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip
#sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/JetBrainsMono.zip
sudo unzip /tmp/JetBrainsMono.zip -d ~/.local/share/fonts/nerd-fonts
fc-cache -v
cd || exit


# +--------------------+
# | Python virtual Env |
# +--------------------+

sudo apt install python3-venv python3-pip -y
python3 -m venv global_env
#source global_env/bin/activate
