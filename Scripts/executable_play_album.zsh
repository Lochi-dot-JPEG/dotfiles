#!/bin/zsh

MUSICDIR=$HOME/Music/Music
ALBUMS=$(ls $MUSICDIR)
ALBUM=$(echo "$ALBUMS" | fuzzel -d -l 40 -w 85 -p " ")

if [[ $ALBUM != '' ]]; then
	mpc clear

	cd $MUSICDIR/$ALBUM
	for song in *(flac|mp3); do
		mpc add "$ALBUM/$song"
	done
	mpc play
fi
