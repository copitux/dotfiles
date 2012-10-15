alias ..='cd ..'
alias ...='cd .. && cd ..'
alias ll="ls -l -h"
alias la="ls -a"
alias l="ls"
alias lla="ls -a -l"
alias lm='ls -la | less'
mkpymod() {
  mkdir $1
  touch $1/__init__.py
  cd $1
}
rmpyc() {
    find . -name "*.pyc" -exec rm -rf {} \;
}
