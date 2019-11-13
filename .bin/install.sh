#!/bin/bash

# This install script will install of my required software.

echo 'Updating System...'
sudo apt update >/dev/null 2>&1 && sudo apt upgrade -y >/dev/null 2>&1
echo 'System Updated.'

# Check if stow is installed
if command -v stow >/dev/null 2>&1; then
	echo 'Skipping: Stow already installed.'
else
	echo 'Installing stow...'
	sudo apt install stow -y >/dev/null 2>&1
	echo 'Finished: Installing stow'
fi

# Install patched powerline font
if [ -f /usr/share/fonts/opentype/PowerlineSymbols.otf ] && [ -f /etc/fonts/conf.avail/10-powerline-symbols.conf ]; then
	echo 'Skipping: Patched Powerline Fonts already installed.'
else
	echo 'Installing Patched Powerline Fonts...'
	sudo apt install fonts-powerline -y >/dev/null 2>&1
	echo 'Finished: Installing Patched Powerline Fonts'
fi

# Install neovim

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
