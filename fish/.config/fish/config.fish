set fish_greeting ""

# Path
fish_add_path ~/.local/bin
fish_add_path /nix/var/nix/profiles/default/bin

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
alias fast='fastfetch -c examples/13.jsonc'
alias c='clear'

# Zoxide
zoxide init fish | source

# Starship
starship init fish | source

function starship_transient_prompt_func
    starship module character
end

enable_transience
