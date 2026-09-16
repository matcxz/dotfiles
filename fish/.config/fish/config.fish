# Disable greeting
set fish_greeting ""

# Path
set -gx PATH $PATH /home/matheus/.local/bin

# Alias
alias ls='eza --icons always'
alias ll='eza -lah --icons always'
alias la='eza -a --icons always'
alias l='eza -lah --icons always'

alias vim='nvim'
alias pacs='doas pacman -S'
alias pacsyu='doas pacman -Syu'
alias pacrns='doas pacman -Rns'

alias rm='rm -rf'

#alias sudo='doas'
alias cd='z'
alias fast='fastfetch -c examples/8.jsonc'


# Zoxide
zoxide init fish | source
