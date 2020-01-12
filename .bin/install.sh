#!/bin/bash

# This install script will install of my required software.

echo 'Running apt update...'
sudo apt update >/dev/null 2>&1
echo 'Running apt upgrade...'
sudo apt upgrade -y
echo 'System updated.'

echo 'Installing programs'
sudo apt install -y zsh curl software-properties-common apt-transport-https wget ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip stow uuid-runtime dconf-cli
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install patched powerline font
if [ -f /usr/share/fonts/opentype/PowerlineSymbols.otf ] && [ -f /etc/fonts/conf.avail/10-powerline-symbols.conf ]; then
	echo 'Skipping: Patched Powerline Fonts already installed.'
else
	echo 'Installing Patched Powerline Fonts...'
	sudo apt install fonts-powerline -y >/dev/null 2>&1
	echo 'Finished: Installing Patched Powerline Fonts'
fi

# Install neovim v0.4.3 from source
mkdir $HOME/temp
cd $HOME/temp
wget https://github.com/neovim/neovim/archive/v0.4.3.zip
unzip v0.4.3.zip
cd neovim-0.4.3
make CMAKE_BUILD_TYPE=Release
sudo make install
cd $HOME
rm -rf $HOME/temp


# Install tmux plugin manager
if ! [ -d $HOME/.tmux/plugins/tpm ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Install NerdFonts

# Install VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

# Give instructions for manual install steps
echo ''
echo ''
echo 'System Setup finished. If this is the first time running the install script you will have to install a few things manually.'
echo ''
echo ''
echo '1. Open vim and install Coc extensions.'
echo ''
echo ':CocInstall coc-json coc-html coc-css coc-tsserver coc-vetur coc-yaml coc-emmet'
echo ''
echo ''
echo '2. Install NerdFonts for vim devicons'
echo ''
echo 'git clone https://github.com/ryanoasis/nerd-fonts'
echo 'cd nerd-fonts ... ./install.sh Hack'
echo ''
echo ''
echo '3. Install Gogh color theme for gnome terminal'
echo ''
echo 'run this command. Choose gruvbox. '
echo 'bash -c  "$(wget -qO- https://git.io/vQgMr)"'
echo ''

# Finished. This script is still a work in progress like my dotfiles. 
