ligth() {
  eval `dircolors ~/.dotfiles/solarized/dircolors/dircolors.ansi-light`
  ~/.dotfiles/solarized/gnome/solarize light
  ~/.dotfiles/solarized/guake/set_light.sh
}

alias slight=light

dark() {
  eval `dircolors ~/.dotfiles/solarized/dircolors/dircolors.ansi-dark`
  ~/.dotfiles/solarized/gnome/solarize dark
  ~/.dotfiles/solarized/guake/set_dark.sh
}

alias sdark=dark
