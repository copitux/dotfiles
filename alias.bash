alias ..='cd ..'
alias ...='cd .. && cd ..'
alias ....='cd .. && cd .. && cd ..'
alias l="ls -la"
alias ls='ls --color=auto'
alias clip='xclip -sel clip'
alias t='python ~/.dotfiles/apps/t/t.py --task-dir ~/Dropbox/tasks --list tasks'

rmpyc() {
    find . -name "*.pyc" -exec rm -rf {} \;
}

tgz() {
    tar -czf $1.tar.gz ${*:2}
}
tbz() {
    tar -cjf $1.tar.bz2 ${*:2}
}

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

