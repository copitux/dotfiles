alias ..='cd ..'
alias ...='cd .. && cd ..'
alias ...='cd .. && cd .. && cd ..'
alias l="ls"
alias la="ls -la"

mkpymod() {
  mkdir $1
  touch $1/__init__.py
}

rmpyc() {
    find . -name "*.pyc" -exec rm -rf {} \;
}

tgz() {
    tar -czf $1.tar.gz ${*:2}
}
tbz() {
    tar -cjf $1.tar.bz2 ${*:2}
}
