# Bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
for completion in ~/.dotfiles/bash_completion/*
do
  . $completion
done

# Python virtualenv
if [[ -e /usr/local/bin/virtualenvwrapper.sh ]]; then
  . /usr/local/bin/virtualenvwrapper.sh 
fi

# Linuxbrew
export PATH="~/.linuxbrew/bin:$PATH"
export MANPATH="~/.linuxbrew/share/man:$MANPATH"
export INFOPATH="~/.linuxbrew/share/info:$INFOPATH"

