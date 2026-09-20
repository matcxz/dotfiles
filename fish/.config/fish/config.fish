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
alias pacr='doas pacman -R'

alias rm='rm -rf'

alias cd='z'
alias fast='fastfetch'
alias c='clear'

# Zoxide
zoxide init fish | source

# Starship
starship init fish | source

function starship_transient_prompt_func
    starship module character
end

enable_transience

pfetch
