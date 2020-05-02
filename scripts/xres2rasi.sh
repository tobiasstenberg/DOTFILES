#!/usr/bin/env bash

# IMPORTANT: this script is currently broken if you try to do the following since the wildcard method used here will get both color1 and color10 at the same time

rasi_file="$HOME/.config/rofi/globals.rasi"

#just get the first color in the color scheme
resources="color0 color1 color2 color3 color4 color5 color6 color7 color8 color9 color10 color11 color12 color13 color14 color15"

for r in $resources; do
  echo $r
  xrvar=$(xrdb -query | awk -v reso=$r '$1~reso{print $2}')
  echo $xrvar
  sed -i --follow-symlinks "/$r:/c\\$r: $xrvar\;" "$rasi_file"
done

#fnt=$(xrdb -query | awk '/font1/{print $2}')
#fntsz=$(xrdb -query | awk '/fontsz1/{print $2}')
#sed -i --follow-symlinks "/font1:/c\font1: \"$fnt $fntsz\"\;" "$rasi_file"