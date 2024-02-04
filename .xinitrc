#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Make colorcoding available for everyone

Black='\[\e[0;30m\]'	# Black
Red='\[\e[0;31m\]'	# Red
Green='\[\e[0;32m\]'	# Green
Yellow='\[\e[0;33m\]'	# Yellow
Blue='\[\e[0;34m\]'	# Blue
Purple='\[\e[0;35m\]'	# Purple
Cyan='\[\e[0;36m\]'	# Cyan
White='\[\e[0;37m\]'	# White

# picom -f &
# xcompmgr -c -f -C -t-5 -l-5 -r4.2 -o.55 &

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync &&
xrandr --addmode HDMI-1 "1920x1080_60.00" &
# xrandr --output eDP-1 --mode 1920x1080 --below HDMI-1 &
# bspc wm --reorder-monitors HDMI-1 eDP-1 &
dunst &
setxkbmap latam &
hsetroot -solid "#000000" &
xsetroot -cursor_name left-ptr &
(sleep 5 && picom) &
caps-indicator &
# If not running interactively, don't do anything
# [[ $- != *i* ]] && return
sxhkd &
st -e ranger /home/alumno/DATOS/2023/01_docencia/01_ISFAlola/aCORR/ &
systemctl --user import-environment DISPLAY &
clipmenud &
numlockx &
exec bspwm

