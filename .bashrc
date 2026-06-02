# Optimized .bashrc for Performance and Productivity

# Source system-wide bashrc if it exists
[ -f /etc/bashrc ] && . /etc/bashrc

# History settings (Large and persistent)
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s histappend

# Performance Aliases
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias rg='rg --smart-case'

# Toolpath Optimization
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# Prompt
PS1='\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\$ '

# Completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
