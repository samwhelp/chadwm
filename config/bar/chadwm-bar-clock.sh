#!/usr/bin/env bash


##
## ## TODO:
##
## * kill old process on restart
##


THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_THEMES_DIR_PATH="$THE_BASE_DIR_PATH/themes"


# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors!
#. "$THE_THEMES_DIR_PATH/gruvchad"
#. "$THE_THEMES_DIR_PATH/nord"
## ~/.config/chadwm/bar/themes/onedark
. "$THE_THEMES_DIR_PATH/onedark"


clock() {
	printf "^c$black^ ^b$darkblue^ 󱑆 "
	#printf "^c$black^^b$blue^ $(date '+%I:%M %p') "
	printf "^c$black^^b$blue^ $(date '+%a, %Y-%m-%d %H:%M:%S') "
}

while true; do
	interval=$((interval + 1))

	sleep 1 && xsetroot -name "$(clock)"
done
