NEWLINE=$'\n'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=")$fg[red]*$fg[yellow]"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

PROMPT='${NEWLINE}$reset_color${PWD/#$HOME/~} $fg[yellow]$(git_prompt_info) $fg[green]→$reset_color '

