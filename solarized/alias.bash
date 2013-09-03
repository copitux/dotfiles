light() {
  ln -fs ~/.dotfiles/solarized/dircolors-pack/dircolors.ansi-light ~/.dotfiles/solarized/dircolors
  ~/.dotfiles/solarized/gnome/solarize light
  ~/.dotfiles/solarized/guake/set_light.sh
}

alias slight=light

dark() {
  ln -fs ~/.dotfiles/solarized/dircolors-pack/dircolors.ansi-dark ~/.dotfiles/solarized/dircolors
  ~/.dotfiles/solarized/gnome/solarize dark
  ~/.dotfiles/solarized/guake/set_dark.sh
}

alias sdark=dark
