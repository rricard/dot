# Sourced by /bin/bash

# Inherits from the all shell env.
source $HOME/.shellenv

# Prompt colors
RESET="\e[39m"
BLUE="\e[34m"
L_MAGENTA="\e[95m"
RED="\e[31m"

# Custom prompt
export PS1="\n$BLUE\w$RESET\n${L_MAGENTA}bash❯ $RESET"