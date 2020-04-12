# manjaro_kde_rice
RICE for manjaro kde plasma

# to do
 RICE it up!

# tjekliste efter startup

 link til god vid om ting man skal gøre efter installation: https://www.youtube.com/watch?v=6c48LDSrw60
 NOTE: yaourt er uddateret og erstattes med yay (se næste punkt)

 sudo pacman -Syu
 sudo pacman -S gufw
 slå firewall til med default settings
 sudo pacman-mirrors -g

 # konfiguration af yay

 yay repo: https://github.com/Jguer/yay

 link til guide (2019): https://www.ostechnix.com/yay-found-yet-another-reliable-aur-helper/

 install: yay -S PKG
 søgning: yay -Ss PKG
 info om PKG i AUR: yay -Si PKG
 opdatering af pacman pakker og yay pakker: yay -Syu
 søg efter pakker og servér som muligheder for installation: yay mplayer
 installation uden confirm: yay -S --noconfirm PKG
 print pakker som skal opdateres: yay -Pu
 fjern unødvendige dependencies: yay -Yc
 manual: man yay

 # installation af broadcom drivers til WiFi på MacBook

 link til kort vid: https://www.youtube.com/watch?v=HGCyCLgzHmQ
 ultrakort guide skrevet af nogen, som har installeret manjaro kde på macbook pro retina: https://cullmann.io/posts/manjaro-with-kde-on-a-macbook-pro.md/

 søg efter broadcom med yay og installér den pakke, der matcher kernen

 # packages som skal installeres til nvidia gaming setup

 sudo pacman -S lib32-libldap lib32-nvidia-utils lib32-nvidia-libgl lib32-alsa-lib 
lib32-alsa-plugins lib32-libpulse lib32-alsa-oss lib32-openal wine winetricks playonlinux

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