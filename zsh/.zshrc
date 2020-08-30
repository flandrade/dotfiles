#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Print Sorin theme legend
legend() {
  echo "added:     ✚"
  echo "ahead:     ⬆"
  echo "behind:    ⬇"
  echo "deleted:   ✖"
  echo "modified:  ✱"
  echo "renamed    ➜"
  echo "stashed:   ✭"
  echo "unmerged:  ═"
  echo "untracked: ◼"
}

# Auto-Switch NVM environment when necessary.
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc # Need to run this on startup if in a directory with .nvmrc

# asdf
. /usr/local/opt/asdf/asdf.sh

# Set VIM
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
