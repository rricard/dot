# Sourced in all shell environments

# Source NVM
export NVM_DIR="$HOME/.nvm"
source /usr/local/opt/nvm/nvm.sh

# Shim rbenv
eval "$(rbenv init -)"

# Setup rust
export PATH="$HOME/.cargo/bin:$PATH"

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