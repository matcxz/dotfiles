## Dotfiles
My personal dotfiles for my Arch Linux setup.

This repository was created to store and preserve my dotfiles to use as a backup, feel free to use!

## What dotfiles are here?
- Sway (Window manager)
- i3 (Window manager)
- Polybar (i3 bar)
- Mako (Notification daemon)
- Foot (Wayland terminal)
- Waybar (Sway bar)
- Fastfetch (System information displayer)
- Rofi (Application launcher)
- Wallpapers (Backgrounds used by i3)
- Fuzzel (Application launcher)
- .Xresources (XTerm config)
- .vimrc (Vim config)
- .bashrc (Bash config)

## Requirements
- stow
- sway
- i3
- polybar
- mako
- foot
- waybar
- fastfetch
- rofi
- fuzzel
- A Nerd Font: [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads) and [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
- [st](https://github.com/matheusc457/st) 

## Installation
These dotfiles are managed with [GNU Stow](https://www.gnu.org/software/stow/).

```bash
git clone https://github.com/mathzx0/dotfiles ~/dotfiles
cd ~/dotfiles
stow bash vim x11 fastfetch foot fuzzel i3 mako polybar rofi sway waybar wallpapers
```

After stowing, make all shell scripts executable:
```bash
find ~/dotfiles -name "*.sh" -exec chmod +x {} \;
```

## Notes
WiFi RTL8723AE causing IRQ storm/high CPU?
Fix: add pcie_aspm=off to GRUB_CMDLINE_LINUX_DEFAULT int /etc/default/grub, run sudo grub-mkconfig -o /boot/grub/grub.cfg, reboot.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
