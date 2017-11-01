# Regular
txtblk='\e[0;30m' # Black
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

# Bold
bldblk='\e[1;30m' # Black
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

# Underline
unkblk='\e[4;30m' # Black
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

# Background
bakblk='\e[40m'   # Black
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

gc() {
  git add . ;
  git commit -m "$1";
}

gcp() {
  gc "$1";
  git push;
}

gp() {
  git pull;
}

find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch=" ($branch)"
  else
    git_branch=""
  fi
}

find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty='*'
  else
    git_dirty=''
  fi
}

git-clean-orig() {
  git status -su | grep -e"\.orig$" | cut -f2 -d" " | xargs rm
}

alias res='touch tmp/restart.txt'
alias ls='ls -Gpa'
alias s='subl'
alias grep='grep --color -n -A 1 -B 1'
alias be='bundle exec '

export PROMPT_COMMAND="$PROMPT_COMMAND find_git_branch; find_git_dirty"

export EDITOR="nvim"
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH
export PS1="\n\w\[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \[\033[0;32m\]→ \[\033[00m\] "
eval "$(rbenv init - --no-rehash)"

if [ "$(uname)" == "Darwin" ]; then
  # Autojump
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
fi

# for homebrew/cask (install into /Applications)
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export TEST_RETRY_COUNT=0
