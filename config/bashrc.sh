# Sourced by /bin/bash

# Inherits from the all shell env.
source $HOME/.shellenv

# Prompt colors
RESET="\e[39m"
BLUE="\e[34m"
L_MAGENTA="\e[95m"
RED="\e[31m"
DARK_GREY="\e[90m"

# Git function helpers
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

# Custom prompt
export PS1="\n${BLUE}\w ${RESET}${DARK_GREY}$(parse_git_branch)${RESET}\n${L_MAGENTA}\$ > ${RESET}"
