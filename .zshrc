# Optimized .zshrc for Performance and Productivity

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory
setopt incappendhistory
setopt sharehistory
unsetopt beep

# Key bindings
bindkey -e

# Performance Aliases
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias rg='rg --smart-case'

# Prompt (Minimalist for performance)
PROMPT='%n@%m:%~ $ '

# Toolpath Optimization
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# Enable completions
autoload -Uz compinit
compinit
