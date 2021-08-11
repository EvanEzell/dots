#!/usr/bin/env bash
# environment {{{1 ------------------------------------------------------------
VUNDLE_DIR=~/.vim/bundle/Vundle.vim
# environment 1}}} ------------------------------------------------------------
# git check {{{1 --------------------------------------------------------------
# check to make sure git is installed
if [ -x "$(command -v git)" ]; then
    echo "Error: git is not installed." >&2
    exit 1
fi
# end git check 1}}} ----------------------------------------------------------
# install vundle {{{1 ---------------------------------------------------------
# install vundle unless already installed
if [ ! -d "$VUNDLE_DIR" ]; then
    echo "Installing Vundle into $VUNDLE_DIR"
    git clone https://github.com/VundleVim/Vundle.vim.git $VUNDLE_DIR
    vim +BundleInstall
fi
# end install vundle 1}}} -----------------------------------------------------
# install fonts {{{1 ----------------------------------------------------------
# install powerline fonts for airline status bar
git clone https://github.com/powerline/fonts.git --depth=1
fonts/install.sh
rm -rf fonts
# end install fonts 1}}} ------------------------------------------------------
# install plugins {{{1 --------------------------------------------------------
vim +PluginInstall +qall
# end install plugins 1}}} ----------------------------------------------------
