export PATH=~/Apps:$PATH
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi
for completion in ~/.dotfiles/bash_completion/*
do
    . $completion
done
#################################################

# Virtualenv
if [[ -e /usr/local/bin/virtualenvwrapper.sh ]]; then
  . /usr/local/bin/virtualenvwrapper.sh 
fi

# Alias
joinvideo() {
  # joinvideo out.avi uno.avi dos.avi ...
  mencoder -ovc copy -oac copy -o $*
}
saveiso() {
  wodim -v -eject dev=/dev/sg0 $*
}
makeiso() {
  genisoimage -l -R -J -o $1.iso $2
}

alias clip='xclip -sel clip'
