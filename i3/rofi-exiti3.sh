#!/bin/bash
OPTIONS="Stop i3\nExit"

option=$(echo -e "$OPTIONS" | rofi -width 30 -dmenu -i -eh 2 -font "Roboto Light 18" -l 2 -hide-scrollbar -p rofi-exiti3: | awk '{print $1}' | tr -d '\r\n')

if [ ${#option} -gt 0 ]
then
	case $option in
		Stop)
			i3-msg exit
			;;
		Exit)
			;;
	esac
fi
