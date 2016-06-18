#!/bin/sh

if xrandr | grep '^DP1 disconnected' > /dev/null; then
	echo "No second monitor attached"
	exit 1
fi


xrandr --output DP1 --mode 2560x1440 --right-of eDP1
bspc monitor DP1 -d www dev bonus 5000 nine
bspc monitor eDP1 -d term chat mail extra root
