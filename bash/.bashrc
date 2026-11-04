# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
# export PS1='\w \\$ '
export PS1='\W \\$ '

# Alias
alias pacs='doas pacman -S'
alias pacsyu='doas pacman -Syu'
alias pacrns='doas pacman -Rns'
alias pacr='doas pacman -R'

alias cd='z'
alias fast='fastfetch -c examples/13.jsonc'
alias c='clear'

# Bash Completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

# Zoxide
eval "$(zoxide init bash)"
