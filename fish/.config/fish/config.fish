set fish_greeting ""

# Path
set -gx PATH $HOME/.local/bin $PATH

# Alias
alias ls='eza'
alias ll='eza -lah'
alias la='eza -a'
alias l='eza -lah'

alias pacs='doas pacman -S'
alias pacsyu='doas pacman -Syu'
alias pacrns='doas pacman -Rns'
alias pacr='doas pacman -R'
alias cat='bat'
alias btw='echo I use Arch, btw'

alias rm='rm -rf'

alias cd='z'
alias fast='fastfetch -c examples/13.jsonc'
alias c='clear'

# Zoxide
zoxide init fish | source

# Starship
#starship init fish | source

#function starship_transient_prompt_func
#    starship module character
#end

#enable_transience
