#!/bin/bash
echo '--------------------'
echo 'Setting up system...'
echo '--------------------'

# Update and upgrade the system
echo ''
echo 'Updating system...'
echo ''
sudo pacman -Syu

# Install packages with Pacman
echo ''
echo 'Installing packages...'
echo ''
sudo pacman -S stow neofetch lolcat libreoffice-still cmake zsh code zsh-completions discord firefox-developer-edition virtualbox vagrant vlc powerline-fonts git obs-studio nextcloud-client fragments dbeaver ttf-joypixels neovim htop exa meld fzf acpi wget

# Install packages with Pacman
echo ''
echo 'Installing packages...'
echo ''
yay -S mongodb-bin mongodb-compass-community-bin mongodb-tools-bin google-chrome typora mailspring virtualbox-ext-oracle spotify brave-bin

# Install tmux plugin manager
echo ''
echo 'Installing tmux plugin manager...'
echo ''
if ! [ -d $HOME/.tmux/plugins/tpm  ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# TODO
# nvm, node, yarn, gridsome, aws-cli, serverless, 
# NVM install
# ohmyzsh install
# add stow into setup script

# {{ Install NVM }}
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# {{ Setup Coc Extensions for Neovim }}
	set -o nounset    # error when referencing undefined variable
	set -o errexit    # exit when command fails
	
	# Setup extensions folder
	mkdir -p ~/.config/coc/extensions
	cd ~/.config/coc/extensions
	if [ ! -f package.json ]
	then
	  echo '{"dependencies":{}}'> package.json
	fi

	# TODO => Add Coc Extensions install into setup script. Don't forget to cd into that correct dir
	#npm install coc-json coc-html coc-css coc-tsserver coc-vetur coc-yaml coc-emmet coc-phpls coc-highlight coc-git coc-snippets coc-markdownlint coc-prettier coc-pairs --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
	# coc-prettier - maybe do coc-ale or something along those lines.

# {{ Install ohmyzsh }}
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ''
echo 'Post install checks.'
echo ''
echo '1. Run the following command to install Gogh themes for Gnome Terminal'
echo 'bash -c  "$(wget -qO- https://git.io/vQgMr)"'
echo ''
echo ''
echo '2. Nerd Fonts: git clone the nerdfonts git repo and run the install script followed by the name of the font you wish to install. Eg. ./install Hack'
echo 'git clone git@github.com:ryanoasis/nerd-fonts.git'
echo ''
