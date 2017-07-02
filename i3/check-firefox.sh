#!/bin/bash

if pgrep -x "firefox" > /dev/null
then
	:
else
	firefox
fi
