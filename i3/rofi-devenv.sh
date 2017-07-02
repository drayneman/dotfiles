#!/bin/bash
OPTIONS="Idea\nPyCharm\nAndroid Studio"

option=$(echo -e "$OPTIONS" | rofi -width 100 -hide-scrollbar -font "Roboto Light 18" -padding 450 -l 3 -dmenu -i -eh 2 -p rofi-devenv: | awk '{print $1}' | tr -d '\r\n')

if [ ${#option} -gt 0 ]
then
	case $option in
		PyCharm)
			pycharm
			;;
		Idea)
			intellij-idea-ultimate-edition
			;;
		Android)
			android-studio
			;;
		*)
			;;
	esac
fi
