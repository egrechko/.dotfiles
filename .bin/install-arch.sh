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
sudo pacman -S stow yay neofetch lolcat libreoffice-still cmake zsh code zsh-completion discord firefox-developer-edition virtualbox vagrant vlc powerline-fonts git obs-studio nextcloud-client fragments dbeaver ttf-joypixels neovim htop exa

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
# Build tools, Gogh, nerdfonts, nvm, node, yarn, gridsome, aws-cli, serverless, 
# NVM install
# ohmyzsh install
# Install lenovo-throttling-fix
# Install lenovo power management, libthinkpad
# Install clipman, albert, picom, rofi, rofimoji if running xfce
# Replace yay with either trizen or pacaur

echo ''
echo 'Post install checks.'
echo ''
echo '1. Make sure virtualbox host modules are installed. -> linux419-rt-virtualbox-host-modules.'
echo ''
echo ''
echo '2. Install NVM'
echo 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash'
echo 'nvm install --lts'
echo ''
echo ''
echo '3. Install ohmyzsh'
echo 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
echo ''
echo ''
echo '4. Run stow'
echo 'cd ~/.dotfiles -> stow *'
