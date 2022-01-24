#!/bin/bash
if pgrep -x "polybar"
then
	killall polybar
else
	$HOME/.config/polybar/launch.sh --shapes &
	bash $HOME/.config/polybar/shapes/scripts/pywal.sh ~/Documents/Wallpapers/4K/
fi
