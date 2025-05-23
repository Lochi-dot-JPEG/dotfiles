#!/bin/sh

WALL_DIR=$HOME/Pictures/Wallpapers
COLS=$(tput cols)
#SELECTION=$(ls ~/Pictures/Wallpapers | gum filter --limit 1 --placeholder 'Pick a wallpaper' --prompt='>')

if [[ $# -eq 0 ]] ; then
	SELECTION=$(ls $WALL_DIR | fzf --preview catimg\ -w\ $COLS\ $WALL_DIR/{})
else
	SELECTION=$1
fi

if [[ $SELECTION != '' ]]; then
	killall swaybg
	wal -i ~/Pictures/Wallpapers/$SELECTION
	hyprctl hyprpaper reload ,"~/Pictures/Wallpapers/$SELECTION"

	BG=$(jq .special.foreground ~/.cache/wal/colors.json)
	BG="${BG//\"/}"
	BG="0x${BG//#/}"

	FG=$(jq .special.cursor ~/.cache/wal/colors.json)
	FG="${FG//\"/}"
	FG="0x${FG//#/}"

fi
