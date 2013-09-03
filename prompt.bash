GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="auto git"

Yellow="\[\033[0;33m\]"
Magenta="\[\033[1;95m\]" 
BoldGreen="\[\033[1;32m\]"    # Green
BoldBlue="\[\033[1;34m\]"     # Blue

# High Intensty
IntenseBlack="\[\033[0;90m\]" # Grey

# Bold High Intensty
Magenta="\[\033[1;95m\]"      # Purple

# Regular Colors
Yellow="\[\033[0;33m\]"
White='\[\033[37m\]'
Red="\[\033[0;31m\]"
Blue="\[\033[0;34m\]"

Color_none="\[\033[0m\]"
Branch_icon='⎇ '
VIRTUALENV_ICON='⚡'
virtualenv() {
  if [[ -n ${VIRTUAL_ENV} ]]; then
    echo "[${VIRTUALENV_ICON} ${Yellow}$(basename $VIRTUAL_ENV)${Color_none}] "
  fi
}
PROMPT_COMMAND='__git_ps1 "$(virtualenv)" "${Blue}\w${Color_none} \$ " "[${Branch_icon} %s] "'
