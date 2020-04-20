# MANJARO KDE PLASMA RICE

## TO DO
Configure rofi
Make your own proper solarized theme

## Custom keybindings
Meta+B: Launch Firefox
Meta+E: Launch Filemanager
Meta+R: Reset Tiling Layout
Meta+Arrow Up: Maximize
Esc: Close Window
Alt+Space: Rofi

## Things to do on first boot
Link to a nice vid on the first steps post-installation: https://www.youtube.com/watch?v=6c48LDSrw60

`$ sudo pacman -Syu`  
`$ sudo pacman -S gufw`  
Enable firewall with default settings  
`$ sudo pacman-mirrors -g`  
`$ sudo pacman -S yay`  

## Color for pacman and AUR helpers
`$ sudo nano /etc/pacman.conf`    
Uncomment #Color and #VerbosePkgLists

## Packages and libs to install for nvidia gaming
sudo pacman -S lib32-libldap lib32-nvidia-utils lib32-nvidia-libgl lib32-alsa-lib 
lib32-alsa-plugins lib32-libpulse lib32-alsa-oss lib32-openal wine winetricks playonlinux

## KDE Plasma settings
global theme: Breath2
plasma: breath2
application style: default
application style -> GTK2: Breath Dark
application style -> GTK3: Breath Dark
colors: Breath2Dark
icons: Breath2 Dark
cursors: HighContrast
window decorations: remove left icon and question mark
wallpaper: #14191d
widget: event calendar plasmoid + spacer uden flexible space
fonts: Noto Sans
monospace font: Source Code Pro 10, 14

## Change settings for default icon size in system tray
`code /usr/share/plasma/plasmoids/org.kde.plasma.private.systemtray`

## Installation of the suckless terminal
git clone https://github.com/tobiasstenberg/st
Icon for ST can be changed in KMenuEdit
Icon is placed in .icons folder

## Installation of kwin-quarter-tiling

`$ git clone https://github.com/Jazqa/kwin-quarter-tiling`  
Activate script by executing:  
`$ kcmshell5 kwinscripts`  

This might be an alternative tiler for KWin:   
https://github.com/kwin-scripts/kwin-tiling#installation  