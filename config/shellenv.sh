# Sourced in all shell environments

# Source NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Source nodebins resolved via yarn
export PATH="$PATH:$HOME/.node_module_bin"

# Aliases
# > git
alias git=hub
alias "g?"="git status"
alias "g+"="git add"
alias "g-"="git rm"
alias "g!"="git commit -am"
alias "g%"="git pull && git push"
alias "gs"="git checkout"

# Editors
export REACT_EDITOR="code"
export EDITOR="code -w"