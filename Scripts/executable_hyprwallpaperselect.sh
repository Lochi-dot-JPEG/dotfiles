#!/bin/sh

WALL_DIR=$HOME/Pictures/Wallpapers
COLS=$(tput cols)
#SELECTION=$(ls ~/Pictures/Wallpapers | gum filter --limit 1 --placeholder 'Pick a wallpaper' --prompt='>')

SELECTION=$(ls $WALL_DIR | shuf -n 1)

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
