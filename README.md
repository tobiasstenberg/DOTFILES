# manjaro_kde_rice
RICE for manjaro kde plasma

# to do
få lavet st med source code pro og solarized dark
lav repo med readme

# tjekliste efter startup

 sudo pacman -Syu
 sudo pacman-mirrors -g

 # konfiguration af yay

 https://www.ostechnix.com/yay-found-yet-another-reliable-aur-helper/

# kde plasma settings

global theme: Breath2
plasma: breath2
colors: Breath2Dark
icons: Breath2 Dark
markers: HighContrast
window decorations: remove left icon and question mark
wallpaper: #14191d
widget: digital clock lite
fonts: Noto Sans
monospace font: Source Code Pro 10, 14

# installation af st

git clone https://git.suckless.org/st

patches for solarized og scrollback kan findes her: https://st.suckless.org/patches/

# konfiguration af bash-prompt

code ~./.bashrc
i linje 75 kan ex 33m ændræs til 30-37 for at ændre farve til prompt

# installation af rofi

sudo pacman -S rofi
placér rofi mappen i ~./config
system settings -> genveje -> brugervalgte genveje -> kommando -> lav genvej til ctrl-space