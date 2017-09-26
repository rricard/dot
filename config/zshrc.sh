# Sourced by /bin/zsh

# Inherits from the all shell env.
source $HOME/.shellenv

# Load default completions
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# Load pure (https://github.com/sindresorhus/pure)
autoload -U promptinit; promptinit
prompt pure

# Load up other plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=(/usr/local/share/zsh-completions $fpath)

# Load up the iTerm2 shell integration if present
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
