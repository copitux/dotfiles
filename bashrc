# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Globals and env

export EDITOR='vim'
export GIT_EDITOR=$EDITOR
SYSTEM=`uname -a`
DOTFILES=$HOME/.dotfiles

# System configs
# TODO: Improve :P

if [[ $SYSTEM =~ .*Darwin.* ]]; then
    source $DOTFILES/mac.bash
elif [[ $SYSTEM =~ .*Linux.* ]]; then
    source $DOTFILES/linux.bash
fi

# Git prompt with steroids
# git://github.com/adamv/dotfiles.git

source $DOTFILES/prompt.bash

# Virtualenvwrapper
export WORKON_HOME=$HOME/.envs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
