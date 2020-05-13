# RICE

* window manager: i3-gaps
* terminal: st
* compositor: picom
* status bar: polybar
* application launcher: rofi
* file manager: thunar
* notification daemon: dunst + dunstify

## TO DO
Make a custom rofi menu to show vim keybindings for transitioning full time to vim    
Make a custom rofi menu for clipping Font Awesome icons with rofi      
Make a directory within .xres which has template layouts and color schemes for polybar and rofi  
Scale down the interfaces of GTK applications like GIMP and Inkscape  
Find a way to dynamically change GTK2 and GTK3 themes based on .Xresources  
Configure appearance of dunst and dunstify  

Add following features to dunst:  
* volume indicator
* brightness indicator
* use dunst as general notification for when a long script has finished - a scraper for example

Add following features to polybar:  
* Pacman and AUR updates counter
* Number of unread emails and clickable exec to thunderbird
* Github notification counter and clickable link

## MacBook Pro specific settings

#### line 179 in .config/i3/config:  

`exec_always --no-startup-id xrandr --dpi 192`  

#### line 1-11 in .Xresources:  

! Fonts {{{  
Xft.antialias: true  
Xft.hinting:   true  
Xft.rgba:      rgb  
Xft.hintstyle: hintfull  
Xft.dpi:       192  
! }}}  
  
! Cursor  
Xcursor.size: 24  

#### line 1 in .profile:  
`export GDK_DPI_SCALE=0.75`  

#### line 213 in .config/picom.conf:  

`backend = "glx";`  

Backend set to glx to get rid of screen tearing, which was very apparent when scrolling in firefox  

#### Settings in /etc/X11/xorg.conf.d/30-touchpad.conf to make two-finger click right click + natural scroll:  

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

## Installation of the suckless terminal
git clone https://github.com/tobiasstenberg/st
Icon for ST can be changed in KMenuEdit
Icon is placed in .icons folder

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

# KDE Plasma settings

## Overall settings
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

## Installation of kwin-quarter-tiling

`$ git clone https://github.com/Jazqa/kwin-quarter-tiling`  
Activate script by executing:  
`$ kcmshell5 kwinscripts`  

This might be an alternative tiler for KWin:   
https://github.com/kwin-scripts/kwin-tiling#installation  

