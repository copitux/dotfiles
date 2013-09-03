# Bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
for completion in ~/.dotfiles/bash_completion/*
do
  . $completion
done

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

export PATH=~/Apps:$PATH

alias ls='ls --color=auto'
alias clip='xclip -sel clip'
