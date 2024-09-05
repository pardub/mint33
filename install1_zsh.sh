
#!/bin/bash -xev

mkdir -p "$HOME"/.config/zsh
mkdir -p "$HOME"/.config/nvim 

sudo apt install -y zsh
sudo apt install -y  util-linux

# zsh default shell
# sudo chsh -s /bin/zsh marc ## replaced by the command below
sudo chsh -s $(which zsh) $USER

