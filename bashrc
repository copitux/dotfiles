# Globals
[ -z "$PS1" ] && return
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export EDITOR="vim"
export GIT_EDITOR=$EDITOR
set -o vi

if [[ $OS = 'darwin' ]]; then
  . ~/.dotfiles/mac.bash
else
  . ~/.dotfiles/linux.bash
fi

. ~/.dotfiles/prompt.bash 
. ~/.dotfiles/bookmarks.bash
. ~/.dotfiles/bash.alias.bash
[[ -e ~/.bash.local.bash ]] && . ~/.bash.local.bash
