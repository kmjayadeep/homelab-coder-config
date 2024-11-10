#!/bin/bash
sudo apt update
sudo apt install -y neovim zsh

# OhMyZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
