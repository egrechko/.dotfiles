# My Personal Dotfiles

You will need to use stow to automatically link all of your configs into the correct locations.

## Setup
Just run the following command to stow all of your configs and ignore any files in the main directory. `stow -t ~ */`. I use this command because stow doesnt seem to respect my .stow-ignore.

## Todo

- [ ] Create update script for updating system, node, yarn, python packages
- [ ] Setup an arch install file for all of my current explicitly installed packages. Easy reinstall in the future.

## Vim Todo

- [ ] Merge ~/.config/nvim/ with current nvim dotfiles
