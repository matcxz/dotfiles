# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Path
export PATH="/opt/zig:$PATH"

# Alias
alias ls='eza --color always'
alias ll='eza -lah --color always'
alias la='eza -a --color always'
alias l='eza -lah --color always'
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
#alias ls='eza --icons always'
#alias ll='eza -lah --icons always'
#alias la='eza -a --icons always'
#alias l='eza -lah --icons always'

alias pacs='doas pacman -S'
alias pacsyu='doas pacman -Syu'
alias pacrns='doas pacman -Rns'
alias pacr='doas pacman -R'

alias rm='rm -rf'

alias cd='z'
alias fast='fastfetch -c examples/13.jsonc'
alias c='clear'

# Zoxide
eval "$(zoxide init bash)"

# Bash Completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi
