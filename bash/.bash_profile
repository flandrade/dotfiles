#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
RED="\[\033[0;31m\]"
BLACK="\[\033[0;30m\]"
PURPLE="\[\033[0;35m\]"
WHITE="\[\033[0;37m\]"

GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=exfxcxdxbxegedabagacad

export PS1=$CYAN"\u@\h"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$WHITE'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
  else echo "'$RED'"$(__git_ps1 " (%s)")
    fi)'$YELLOW" \w"$GREEN": "

alias ll='ls -lah'
alias gg='git status -s'

# PATH
export PATH="/Users/fernanda/.stack/snapshots/x86_64-osx/lts-6.4/7.10.3/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
