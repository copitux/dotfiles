GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="auto git"

YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
COLOR_NONE="\[\033[0m\]"

BRANCH_ICON='⎇ '
VIRTUALENV_ICON='⚡'

virtualenv_name() {
  if [[ -n ${VIRTUAL_ENV} ]]; then
    echo "[${VIRTUALENV_ICON} ${YELLOW}$(basename $VIRTUAL_ENV)${COLOR_NONE}] "
  fi
}


# Task prompt
TASK_ICON='✍'
GO_ICON='👻'
WHITE="\[\033[1;37m\]"

function go_path() {
  if [[ $PWD == $GOPATH* ]]; then
      echo "[${GO_ICON} Go] "
  else
      echo ""
  fi
}

function task_count() {
  TASKS="$(t | wc -l)"
  if [ $TASKS -eq 0 ]; then
    echo ''
  else
    echo "[${WHITE}${TASK_ICON} ${TASKS}${COLOR_NONE}] "
  fi
}

PROMPT_COMMAND='__git_ps1 "$(task_count)$(virtualenv_name)$(go_path)" "${BLUE}\w${COLOR_NONE} \$ " "[${BRANCH_ICON} %s] "'
