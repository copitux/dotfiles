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

. ~/.dotfiles/bookmarks.bash
. ~/.dotfiles/alias.bash
. ~/.dotfiles/prompt.bash
. ~/.dotfiles/go.bash
[[ -e ~/.dotfiles/solarized/dircolors ]] && eval `dircolors ~/.dotfiles/solarized/dircolors`
[[ -e ~/.bashrc.local ]] && . ~/.bashrc.local
