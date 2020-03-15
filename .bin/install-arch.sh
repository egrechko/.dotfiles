#!/bin/bash
echo '--------------------'
echo 'Setting up system...'
echo '--------------------'

# Update and upgrade the system
echo ''
echo 'Updating system...'
echo ''
sudo pacman -Syu --noconfirm >/dev/null 2>&1

# Install packages with Pacman
echo ''
echo 'Installing packages...'
echo ''
sudo pacman -S stow yay neofetch lolcat libreoffice-still albert cmake zsh code zsh-completion picom discord firefox-developer-edition virtualbox vlc powerline-fonts git obs-studio nextcloud-client fragments dbeaver rofi ttf-joypixels rofimoji --noconfirm >/dev/null 2>&1

# Install packages with Pacman
echo ''
echo 'Installing packages...'
echo ''
yay -S mongodb-bin mongodb-compass-community-bin mongodb-tools-bin google-chrome typora mailspring

# Install tmux plugin manager
echo ''
echo 'Installing tmux plugin manager...'
echo ''
if ! [ -d $HOME/.tmux/plugins/tpm  ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi


# TODO
# Build tools, Gogh, nerdfonts, vagrant, virtualbox, mongodb, nvm, node, yarn, gridsome, aws-cli, serverless, 
# Install lenovo-throttling-fix
# Install lenovo power management, libthinkpad
# Install clipman if running xfce

echo ''
echo 'Post install checks.'
echo ''
echo '1. Make sure virtualbox host modules are installed. -> linux419-rt-virtualbox-host-modules.'
