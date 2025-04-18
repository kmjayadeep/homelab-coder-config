#!/bin/bash
sudo apt-get update
sudo apt-get install -y neovim zsh

# OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s /bin/zsh $USER
cp dotfiles/zshrc ~/.zshrc

# Taskwarrior
nix-env -f "<nixpkgs>" -iA taskwarrior3
mkdir -p ~/.config/task
cp dotfiles/taskrc ~/.config/task/taskrc
