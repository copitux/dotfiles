# Homebrew
if [[ -n `which brew` ]]; then
  BREW_DIR=`brew --prefix`
  export PATH=$BREW_DIR/bin:$PATH
  [[ -e $BREW_DIR/share/python ]] && export PATH=$BREW_DIR/share/python:$PATH
  
  # Bash completion
  if [[ -e $BREW_DIR/etc/bash_completion ]]; then
    ln -sf "$BREW_DIR/Library/Contributions/brew_bash_completion.sh" "$BREW_DIR/etc/bash_completion.d"
    ln -sf ~/.dotfiles/bash_completion/pip "$BREW_DIR/etc/bash_completion.d"
    ln -sf ~/.dotfiles/bash_completion/django_admin "$BREW_DIR/etc/bash_completion.d"
    . $BREW_DIR/etc/bash_completion
  fi

  # Virtualenv
  if [[ -e $BREW_DIR/share/python/virtualenvwrapper.sh ]]; then
    . $BREW_DIR/share/python/virtualenvwrapper.sh
    # export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
  fi
fi

# Alias
alias ls='ls -G'
