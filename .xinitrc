#!/bin/sh

# monitor config
xrandr --output DVI-1 --auto --pos 0x370 --output DVI-0 --primary --auto --pos 1680x0

# backgrounds
[ -f ~/.fehbg ] && sh ~/.fehbg &

# cursor
xsetroot -cursor_name left_ptr

# no bell
xset -b

# key repeat
xset r rate 180 60

# turn caps lock into a control key
setxkbmap -option ctrl:nocaps

# start dropbox
dropboxd

# start xmonad
exec xmonad
