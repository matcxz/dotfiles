# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
# export PS1='\[\e[92m\]\u\[\e[0m\] in \[\e[96m\]\w\[\e[0m\] \[\e[97m\]\\$\[\e[0m\] '

# Alias
alias ls='eza --color always'
alias ll='eza -lah --color always'
alias la='eza -a --color always'
alias l='eza -lah --color always'
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"

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
