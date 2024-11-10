#!/bin/bash
sudo apt-get update
sudo apt-get install -y neovim zsh

# OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s /bin/zsh $USER
