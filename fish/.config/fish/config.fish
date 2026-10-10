set fish_greeting ""

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
alias cat='bat --theme="Catppuccin Mocha" --paging=never'
alias btw='echo I use Arch, btw'

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

# Nix
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
    source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
end

# Nix user profile
fish_add_path ~/.nix-profile/bin

# Nix desktop applications
if set -q XDG_DATA_DIRS
    set -gx XDG_DATA_DIRS "$XDG_DATA_DIRS:$HOME/.nix-profile/share"
else
    set -gx XDG_DATA_DIRS "/usr/local/share:/usr/share:$HOME/.nix-profile/share:/nix/var/nix/profiles/default/share"
end
