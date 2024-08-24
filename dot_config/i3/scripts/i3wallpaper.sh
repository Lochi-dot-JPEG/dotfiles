ls Pictures/Wallpapers >> wall.txt
x=$(cat wall.txt)
y=$(zenity --list --title="i3 Wallpaper Picker" --radiolist --text "Select Wallpaper" --column Wallpaper --column File $x)
wall=Pictures/Wallpapers/$y
rm bgfile
echo $wall >> bgfile
feh --bg-scale $wall
rm wall.txt
