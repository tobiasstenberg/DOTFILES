# MANJARO KDE PLASMA RICE

## TO DO
Configure rofi  
Configure compton  
Configure dunst
Make your own theme that

## Keybindings
Mod+Return: exec st
Mod+D: exec rofi  
Mod+E: exec firefox  
Mod+C: exec thunar  
Mod+Shift+R: Reset i3gaps    
Esc: Close Window  

## Themes

#### SOLARIZED DARK  
#073642,  0: black  
#dc322f,  1: red  
#859900,  2: green  
#b58900,  3: yellow  
#268bd2,  4: blue  
#d33682,  5: magenta  
#2aa198,  6: cyan  
#eee8d5,  7: white  
#002b36,  8: brblack  
#cb4b16,  9: brred  
#586e75,  10: brgreen  
#657b83,  11: bryellow  
#839496,  12: brblue  
#6c71c4,  13: brmagenta  
#93a1a1,  14: brcyan  
#fdf6e3,  15: brwhite  

#282828,  258: bg  
#ebdbb2,  259: fg  
#add8e6,  256: cursor  
#555555,  257: rev cursor  

## MacBook Pro specific settings

line 179 in .config/i3/config:  

`exec_always --no-startup-id xrandr --dpi 192`  

line 1-10 in .Xresources:  

! Fonts {{{  
Xft.antialias: true  
Xft.hinting:   true  
Xft.rgba:      rgb  
Xft.hintstyle: hintfull  
Xft.dpi:       192  
! }}}  
  
! Cursor  
Xcursor.size: 24  

line 1 in .profile:  
`export GDK_DPI_SCALE=0.75`  

Settings in /etc/X11/xorg.conf.d/30-touchpad.conf to make two-finger click right click + natural scroll:  

Section "InputClass"  
    Identifier "touchpad"  
    Driver "libinput"  
    MatchIsTouchpad "on"  
    Option "Tapping" "on"  
    Option "NaturalScrolling" "true"  
    Option "ClickMethod" "clickfinger"  
EndSection  

Alternatively .config/touchpadxlibinputrc can be configured

## First boot
Link to a nice vid on the first steps post-installation: https://www.youtube.com/watch?v=6c48LDSrw60

`$ sudo pacman -Syu`  
`$ sudo pacman -S gufw`  
`$ sudo pacman-mirrors -g`    
`$ sudo pacman -S yay`  

## Color for pacman and AUR helpers
`$ sudo nano /etc/pacman.conf`    
Uncomment #Color and #VerbosePkgLists

## Configuring git
Set users name:  
`$ git config --global user.name <name>`  

Set email:  
`$ git config --global user.email <email>`  

Enable global credentials to be stored once for every locally cloned repo:  
`$ git config --global credential.helper store`  

## Packages and libs to install for nvidia gaming
sudo pacman -S lib32-libldap lib32-nvidia-utils lib32-nvidia-libgl lib32-alsa-lib 
lib32-alsa-plugins lib32-libpulse lib32-alsa-oss lib32-openal wine winetricks playonlinux

## KDE Plasma GTK settings
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
Remove Launch Feedback from System Settings -> Applications

## Remove window Decorations and add active window frame
Copy the borderline folder of this repo and place it in ~.local/share/aurorae/themes  
Choose the borderline window decoration

## Alternative to window decorations
Go to System Settings > Window Management > Window Rules > New..  
Under Window class (application) choose Regular Expression from the drop down and enter .* in the input.  
Click the Appearance & Fixes tab. Enable the No titlebar and frame option. Select Force from the drop down click the Yes radio option.

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

