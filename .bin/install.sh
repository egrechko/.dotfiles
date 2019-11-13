#!/bin/bash

# This install script will install of my required software.

sudo apt update && sudo apt upgrade -y

# Check if stow is installed
if command -v stow >/dev/null 2>&1; then
	echo 'stow is installed. Skipping.'
else
	sudo apt install stow -y
fi


# Install neovim
