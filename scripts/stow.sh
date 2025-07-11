#!/usr/bin/env bash
#
# Script Name: stow.sh
# 
# Setup config symlinks using GNU Stow

cd dotfiles
stow aerospace
stow alacritty

rm -f ~/.zprofile ~/.p10k.zsh ~/.zshrc
stow zsh