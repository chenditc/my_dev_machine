#!/bin/bash

sudo apt update

# Install git
sudo apt install -y git zsh

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || echo "ok"

# Setup vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Copy vimrc
cp ./.vimrc ~/.vimrc
vim +PluginInstall +qall
