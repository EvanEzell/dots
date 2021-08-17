#!/usr/bin/env bash
# environment {{{1 ------------------------------------------------------------
TMUX_PLUGIN_DIR=~/.tmux/plugins/tpm
# environment 1}}} ------------------------------------------------------------
# git check {{{1 --------------------------------------------------------------
# check to make sure git is installed
if [ ! -x "$(command -v git)" ]; then
    echo "Error: git is not installed." >&2
    exit 1
fi
# end git check 1}}} ----------------------------------------------------------
# install tmux-plugins {{{1 ---------------------------------------------------
# install tmux-plugins unless already installed
if [ ! -d "$TMUX_PLUGIN_DIR" ]; then
    echo "Installing tmux-plugins into $TMUX_PLUGIN_DIR"
    git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGIN_DIR
fi
# end install tmux-plugins 1}}} -----------------------------------------------
