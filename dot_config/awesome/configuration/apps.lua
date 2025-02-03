local filesystem = require("gears.filesystem")

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require("beautiful").xresources.apply_dpi
local get_dpi = require("beautiful").xresources.get_dpi
local rofi_command = "env /usr/bin/rofi -dpi "
	.. get_dpi()
	.. " -width "
	.. with_dpi(400)
	.. " -show drun -theme "
	.. filesystem.get_configuration_dir()
	.. "/configuration/rofi.rasi -run-command \"/bin/bash -c -i 'shopt -s expand_aliases; {cmd}'\""

return {
	-- List of apps to start by default on some actions
	default = {
		terminal = "kitty",
		rofi = rofi_command,
		lock = "i3lock-fancy -f Comic-Sans-MS",
		quake = "kitty",
		screenshot = "flameshot screen -p ~/Pictures",
		region_screenshot = "flameshot gui",
		browser = "librewolf",
		game_engine = "~/Scripts/open_game_engine.sh",
		editor = "kitty nvim",
		social = "discord",
		files = "thunar",
	},
	-- List of apps to start once on start-up
	run_on_start_up = {
		"picom",
		"aw-qt",
		"nm-applet --indicator", -- wifi
		"pnmixer", -- shows an audiocontrol applet in systray when installed.
		--'blueberry-tray', -- Bluetooth tray icon
		"numlockx on", -- enable numlock
		"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)", -- credential manager
		"xfce4-power-manager", -- Power manager
		"xrandr --output DP-0 --mode 1920x1080 --rate 165.00",
		"flameshot",
		"steam -silent",
		--"feh --randomize --bg-fill ~/.wallpapers/*",
		"feh ~/Pictures/Wallpapers/* --recursive --randomize --bg-fill",
		"/usr/bin/variety",
		"xset r rate 200 30",
		"mpd -v",
		-- Add applications that need to be killed between reloads
		-- to avoid multipled instances, inside the awspawn script
		"~/.config/awesome/configuration/awspawn", -- Spawn "dirty" apps that can linger between sessions
	},
}
