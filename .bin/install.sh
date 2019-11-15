#!/bin/bash

# This install script will install of my required software.

echo 'Running apt update...'
sudo apt update >/dev/null 2>&1
echo 'Running apt upgrade...'
sudo apt upgrade -y
echo 'System updated.'

# Check if stow is installed
if command -v stow >/dev/null 2>&1; then
	echo 'Skipping: Stow already installed.'
else
	echo 'Installing stow...'
	sudo apt install stow -y >/dev/null 2>&1
	echo 'Finished: Installing stow'
fi

echo 'Installing misc programs'
sudo apt install -y neofetch

# Install patched powerline font
if [ -f /usr/share/fonts/opentype/PowerlineSymbols.otf ] && [ -f /etc/fonts/conf.avail/10-powerline-symbols.conf ]; then
	echo 'Skipping: Patched Powerline Fonts already installed.'
else
	echo 'Installing Patched Powerline Fonts...'
	sudo apt install fonts-powerline -y >/dev/null 2>&1
	echo 'Finished: Installing Patched Powerline Fonts'
fi

# Install neovim v0.4.3
sudo apt install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
cd $HOME
mkdir $HOME/temp
cd temp
wget https://github.com/neovim/neovim/archive/v0.4.3.zip
unzip v0.4.3.zip
cd neovim-0.4.3
make CMAKE_BUILD_TYPE=Release
sudo make install
cd $HOME
rm -rf $HOME/temp

# Install Gogh (gnome-terminal theme) dependencies
# Gogh github https://github.com/Mayccoll/Gogh
if dpkg -s dconf-cli >/dev/null 2>&1; then
	echo 'Skipping: dconf-cli is already installed.'
else
	echo 'Installing dconf-cli...'
	sudo apt install dconf-cli >/dev/null 2>&1
	echo 'Installed: dconf-cli.'
fi

if dpkg -s uuid-runtime >/dev/null 2>&1; then
	echo 'Skipping: uuid-runtime is already installed.'
else
	echo 'Installing uuid-runtime...'
	sudo apt install uuid-runtime -y >/dev/null 2>&1
	echo 'Installed: uuid-runtime.'
fi

# Install tmux plugin manager
if ! [ -d $HOME/.tmux/plugins/tpm ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Install NerdFonts
#if ! [ -d $HOME/.local/share/fonts/NerdFonts ]; then
#	echo 'Installing NerdFonts...'
#	mkdir -p $HOME/.local/share/fonts/NerdFonts
#	cd $HOME/.local/share/fonts/NerdFonts
#	wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete%20Mono.ttf
#else
#	echo 'Skipping: NerdFonts already installed.'
#fi
