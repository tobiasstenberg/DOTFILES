# MANJARO KDE PLASMA RICE

## to do
konfiguration af rofi

## tjekliste efter startup
link til god vid om ting man skal gøre efter installation: https://www.youtube.com/watch?v=6c48LDSrw60

sudo pacman -Syu
sudo pacman -S gufw
slå firewall til med default settings
sudo pacman-mirrors -g
sudo pacman -S yay

## farve til pacman og yay
`sudo nano /etc/pacman.conf`  
udkommentér #Color og evt #VerbosePkgLists

## packages som skal installeres til nvidia gaming setup
sudo pacman -S lib32-libldap lib32-nvidia-utils lib32-nvidia-libgl lib32-alsa-lib 
lib32-alsa-plugins lib32-libpulse lib32-alsa-oss lib32-openal wine winetricks playonlinux

## kde plasma settings
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

## ændre settings til ikonstørrelser på default panel
`code /usr/share/plasma/plasmoids/org.kde.plasma.private.systemtray`

## installation af st
git clone https://github.com/tobiasstenberg/st
husk at få .icons mappen med

patches til st kan findes her: https://st.suckless.org/patches/