
#!/bin/bash -xev

mkdir -p "$HOME"/.config/zsh
mkdir -p "$HOME"/.config/nvim 

sudo apt install -y zsh
sudo apt install -y  util-linux

# zsh default shell
# sudo chsh -s /bin/zsh marc ## replaced by the command below
sudo chsh -s $(which zsh) $USER

cd $HOME
if [ -e "$HOME"/.zshenv ]
then rm "$HOME"/.zshenv
fi

if [ ! -e "$HOME"/.cache/zsh/history ]
then 
mkdir -p "$HOME"/.cache/zsh || exit
touch "$HOME"/.cache/zsh/history
fi

# Download .zshenv
cd "$HOME" || exit
wget https://raw.githubusercontent.com/pardub/dotfiles/main/dotfiles/.zshenv

# Download .zshrc
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles/main/dotfiles/.zshrc

# Download .aliases
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles/main/dotfiles/.aliases

# Download zsh-functions
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles/main/dotfiles/zsh-functions

# Download init.vim
cd "$HOME"/.config/nvim || exit
wget https://raw.githubusercontent.com/pardub/dotfiles/main/dotfiles/init.vim

sudo reboot
