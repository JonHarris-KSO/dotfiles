# See https://mac.install.guide/terminal/zshrc-zprofile for more info

# -------- Powerlevel10k --------

# Enable Powerlevel10k instant prompt. Should stay close to top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Activate Powerlevel10k and theme
source ~/.p10k.zsh
source $HOMEBREW_LOCATION/share/powerlevel10k/powerlevel10k.zsh-theme


# -------- ZSH --------

source $HOMEBREW_LOCATION/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_LOCATION/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# -------- ZSH History --------

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward # up-arrow
bindkey '^[[B' history-search-forward  # down-arrow


# ---- Aliases ----

alias ls="eza --color=always --icons=always --long"