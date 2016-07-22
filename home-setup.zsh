#!/bin/sh
#
2screen
pkill conky
conky -c ~/.conkyrc-2
xmodmap ~/.xmodmap
#pkill -9 redshift-gtk
#redshift-gtk&
