#!/usr/bin/env bash
VUNDLE_DIR=~/.vim/bundle/Vundle.vim

# check to make sure git is installed
if [ -x "$(command -v git)" ]; then
    echo "Error: git is not installed." >&2
    exit 1
fi

# install vundle unless already installed {{{1 --------------------------------
if [ ! -d "$VUNDLE_DIR" ]; then
    echo "Installing Vundle into $VUNDLE_DIR"
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
    vim +BundleInstall
fi
# 1}}} ------------------------------------------------------------------------

vim +PluginInstall +qall
