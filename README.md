# Hyprland-Gigachad
These are my dotfiles for Hyprland. Currently configs are messy so will upload when cleaned. Keep in mind I am not proficient with programming much, so my config files are probably messy.

# Programs
- Distro - Arch (with CachyOS repositories)
- Shell - bash (with Starship)
- Terminal - foot
- Screenshot - grim/slurp with satty
- File manager - Dolphin
- Image viewer - oculante
- Document viewer - Okular
- Video player - mpv
- App launcher - wofi
- Notification daemon - SwayNC
- Audio control - pavucontrol-qt
- Bluetooth control - kcmshell6
- Network control - nm-applet

<img width="2560" height="1440" alt="satty-20250727-21:29:57" src="https://github.com/user-attachments/assets/fba79923-fec7-452a-ab23-9816059af734" />
<img width="2560" height="1440" alt="satty-20250727-21:37:17" src="https://github.com/user-attachments/assets/9895ba7f-8a54-449f-a0c4-d171cf13bd05" />

### Theming
I have KDE installed besides, and use the KDE system settings for general theming. SwayNC, waybar, wofi and firefox are themed through pywal16 (and pywalfox for firefox). Waybar and pywal16 setup is heavily inspired from [Whiteshadow's Configuration](https://github.com/Alexays/Waybar/wiki/Examples#whiteshadows-configuration) on waybar example page. SwayNC is a modified version of [iyiolacak](https://github.com/iyiolacak/-iyiolacak-s-swaync-config).

### Dolphin
In order for files to be open by applications in Dolphin, you need to run `sudo ln -s /etc/xdg/menus/plasma-applications.menu /etc/xdg/menus/applications.menu `.

## Basic maintenance
- `sudo pacman -Syu` - to update
- `sudo pacman -Rns` - to remove package
- `pacman -Qq | wc -l` - to show package count
- `sudo pacman -Rns $(pacman -Qdtq)` - to remove orphans (does also remove some make dependencies for AUR and tkg)
- `paccache -r` - to remove previous versions of packages, but keep the latest 3
- `paccache -ruk0` - to remove previous versions of uninstalled packages
