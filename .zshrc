# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="edd"

DISABLE_AUTO_TITLE="false"
COMPLETION_WAITING_DOTS="true"
PROMPT="\n$reset_color -"

plugins=(
  git
  autojump
  tmux
  dash
)

source $ZSH/oh-my-zsh.sh

zmodload zsh/complist

setopt no_share_history

# User configuration
export EDITOR='nvim'
export TEST_RETRY_COUNT=0

alias be='bundle exec '
alias grep='grep --color -n'
alias ls='ls -Gpa'

function gcbu() {
  gcb $USER/$1
}

bindkey '^[[Z' reverse-menu-complete
bindkey -M menuselect '^M' .accept-line

eval "$(rbenv init - --no-rehash)"
eval "$(nodenv init -)"

export PATH="/usr/local/opt/node@8/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH:$HOME/.cargo/bin"