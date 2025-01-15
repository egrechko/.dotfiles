# My Personal Dotfiles

You will need to use stow to automatically link all of your configs into the correct locations.

## Setup
Just run the following command to stow all of your configs and ignore any files in the main directory. `stow -t ~ */`. I use this command because stow doesnt seem to respect my .stow-ignore.

## Todo

- [ ] SETUP: Add setup script for installing node with nvm
- [ ] SETUP: Installing global node packages. Eg. yarn
- [ ] Separate the install-arch.sh script into an install script and a setup script. Maybe name them 01-install-arch.sh & 02-setup-arch.sh. This is to ensure that one script installs everything that's necessary and the setup script completes the job by installing npm dependencies/making backups of existing .bashrc, .zshrc/running 'stow *'
- [ ] Create update script for updating system, node, yarn, python packages
- [ ] Add downloading & installing NerdFonts to install script. Put this inside setup script

## Vim Todo

- [ ] Setup coc for prettify and eslint
- [ ] Refine neovim setup to remove inconsistencies. Like when opening a file & missing line numbers. Figure out what is causing that for certain file types.
