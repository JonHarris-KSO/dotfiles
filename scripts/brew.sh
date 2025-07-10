#!/usr/bin/env bash
#
# Script Name: brew.sh
#
# Description: Install apps/packages on fresh macOS
#
# Note: Inspired by https://github.com/protiumx/.dotfiles/. Call 'brew
# outdated' to view outdates packages and update via 'brew upgrade <formula>'

# ---- Apps ---- 

brew install --cask bitwarden                 # password manager
brew install --cask raycast                   # app launcher

# ---- User Experience ----

brew install --cask hiddenbar                 # hide menu bar items
brew install --cask nikitabobko/tap/aerospace # window manager
brew install --cask karabiner-elements        # keyboard remapping

# ---- IDE -----

brew install --cask visual-studio-code
brew install neovim

brew tap d12frosted/emacs-plus
brew install --cask emacs-app

# ---- Terminal ----

brew install --cask alacritty               # terminal 
brew install --cask kitty                   # terminal emulator
brew install --cask font-meslo-lg-nerd-font # font for terminal

brew install powerlevel10k           # zsh theme
brew install zsh-autosuggestions     # improved autosuggestions
brew install zsh-syntax-highlighting # improved highlighting
brew install eza                     # improved ls command

# ---- Python ----

brew install pyenv  # python version manager
brew install uv     # python package manager
brew install poetry # python package manager
