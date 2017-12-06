# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="edd"

DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
PROMPT="\n$reset_color -"

plugins=(
  git
  autojump
  tmux
)

source $ZSH/oh-my-zsh.sh

zmodload zsh/complist

# User configuration
export EDITOR='nvim'
export TEST_RETRY_COUNT=0

alias res='touch tmp/restart.txt'
alias be='bundle exec '
alias grep='grep --color -n -A 1 -B 1'
alias ls='ls -Gpa'

bindkey '^[[Z' reverse-menu-complete
bindkey -M menuselect '^M' .accept-line

eval "$(rbenv init - --no-rehash)"
