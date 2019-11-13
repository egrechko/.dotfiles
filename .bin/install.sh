#!/bin/bash

# This install script will install of my required software.

echo 'Updating System...'
sudo apt update >/dev/null 2>&1 && sudo apt upgrade -y >/dev/null 2>&1
echo 'System Updated.'

# Check if stow is installed
if command -v stow >/dev/null 2>&1; then
	echo 'Skipping: Stow already installed.'
else
	echo 'Installing: stow'
	sudo apt install stow -y >/dev/null 2>&1
	echo 'Finished: Installing stow'
fi

# Install patched powerline font
if [ -f /usr/share/fonts/opentype/PowerlineSymbols.otf ] && [ -f /etc/fonts/conf.avail/10-powerline-symbols.conf ]; then
	echo 'Skipping: Patched Powerline Fonts already installed.'
else
	echo 'Installing: Patched Powerline Fonts'
	sudo apt install fonts-powerline >/dev/null 2>&1
	echo 'Finished: Installing Patched Powerline Fonts'
fi

# Install neovim
