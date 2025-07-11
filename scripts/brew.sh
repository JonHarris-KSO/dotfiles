#!/usr/bin/env bash
#
# Script Name: brew.sh
#
# Description: Install apps/packages on fresh macOS
#
# Note: Inspired by https://github.com/protiumx/.dotfiles/. Call 'brew
# outdated' to view outdates packages and update via 'brew upgrade <formula>'

# ---- Install Homebrew ----
# Follow instructions in ~/dotfiles/README.md

# ---- General ---- 

brew install --cask bitwarden # OS-agnostic password manager
brew install --cask raycast # smart spotlight replacement

# ---- User Experience ----

brew install --cask hiddenbar          # hide less-useful menu bar items
brew install --cask ukelele            # create custom keyboard input .bundle
brew install --cask karabiner-elements # keyboard remapping utility
brew install leader-key                # vim-like leader key for app launcher
brew install --cask nikitabobko/tap/aerospace # i3-like window manager

# ---- IDE -----

brew install --cask visual-studio-code
brew install neovim

brew tap d12frosted/emacs-plus
brew install --cask emacs-app

# ---- Terminal ----

brew install lazygit # terminal-based git client

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
