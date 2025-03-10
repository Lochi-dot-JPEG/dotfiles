local awful = require("awful")
require("awful.autofocus")
local beautiful = require("beautiful")
local hotkeys_popup = require("awful.hotkeys_popup").widget

--local gears = require("gears")
local modkey = require("configuration.keys.mod").modKey
local altkey = require("configuration.keys.mod").altKey
local apps = require("configuration.apps")
-- Key bindings
local globalKeys = awful.util.table.join(
	-- Hotkeys
	awful.key({ modkey }, "F1", hotkeys_popup.show_help, { description = "Show help", group = "awesome" }),
	-- Tag browsing
	--awful.key({ modkey }, "j", awful.tag.viewprev, { description = "view previous", group = "tag" }),
	--awful.key({ modkey }, "k", awful.tag.viewnext, { description = "view next", group = "tag" }),
	awful.key({ altkey, "Control" }, "Up", awful.tag.viewprev, { description = "view previous", group = "tag" }),
	awful.key({ altkey, "Control" }, "Down", awful.tag.viewnext, { description = "view next", group = "tag" }),
	awful.key({ modkey }, "Escape", awful.tag.history.restore, { description = "go back", group = "tag" }),
	-- Default client focus
	awful.key({ modkey }, "j", function()
		awful.client.focus.byidx(1)
	end, { description = "Focus next by index", group = "client" }),
	awful.key({ modkey }, "k", function()
		awful.client.focus.byidx(-1)
	end, { description = "Focus previous by index", group = "client" }),
	awful.key({ modkey }, "Return", function()
		awful.spawn("rofi -show drun")
	end, { description = "Main menu", group = "awesome" }),
	--awful.key({ modkey, "Shift" }, "r", function()
	--awful.spawn("reboot")
	--end, { description = "Reboot Computer", group = "awesome" }),
	--awful.key({ modkey, "Shift" }, "s", function()
	--awful.spawn("shutdown now")
	--end, { description = "Shutdown Computer", group = "awesome" }),
	awful.key({ modkey, altkey }, "q", function()
		_G.exit_screen_show()
	end, { description = "Log Out Screen", group = "awesome" }),
	awful.key({ modkey }, "u", awful.client.urgent.jumpto, { description = "jump to urgent client", group = "client" }),
	awful.key({ altkey }, "Tab", function()
		--awful.client.focus.history.previous()
		awful.client.focus.byidx(1)
		if _G.client.focus then
			_G.client.focus:raise()
		end
	end, { description = "Switch to next window", group = "client" }),
	awful.key({ altkey, "Shift" }, "Tab", function()
		--awful.client.focus.history.previous()
		awful.client.focus.byidx(-1)
		if _G.client.focus then
			_G.client.focus:raise()
		end
	end, { description = "Switch to previous window", group = "client" }),
	-- Programms
	--
	awful.key({ modkey, "Shift" }, "l", function()
		awful.spawn(apps.default.lock)
	end, { description = "Lock the screen", group = "awesome" }),

	-- Screenshots

	awful.key({ modkey }, "p", function()
		awful.util.spawn_with_shell(apps.default.screenshot)
	end, {
		description = "Take a screenshot of your active monitor and copy it to clipboard",
		group = "screenshots (clipboard)",
	}),

	awful.key({ altkey }, "p", function()
		awful.util.spawn_with_shell(apps.default.region_screenshot)
	end, { description = "Mark an area and screenshot it to your clipboard", group = "screenshots (clipboard)" }),

	-- Apps
	awful.key({ modkey }, "v", function()
		awful.util.spawn_with_shell(apps.default.editor)
	end, { description = "Open a text/code editor", group = "launcher" }),
	awful.key({ modkey }, "w", function()
		awful.util.spawn(apps.default.browser)
	end, { description = "Open a browser", group = "launcher" }),
	awful.key({ modkey }, "r", function()
		awful.util.spawn_with_shell(apps.default.game_engine)
	end, { description = "Open a game engine", group = "launcher" }),
	-- Standard program
	awful.key({ modkey }, "e", function()
		awful.spawn(apps.default.terminal)
	end, { description = "Open a terminal", group = "launcher" }),
	awful.key({ modkey }, "x", function()
		awful.spawn(apps.default.social)
	end, { description = "Open a terminal", group = "launcher" }),
	awful.key({ modkey, "Shift" }, "r", _G.awesome.restart, { description = "reload awesome", group = "awesome" }),
	--awful.key({ modkey, "Control" }, "q", _G.awesome.quit, { description = "quit awesome", group = "awesome" }),
	awful.key({ modkey }, "l", function()
		awful.tag.incmwfact(0.05)
	end, { description = "Increase master width factor", group = "layout" }),
	awful.key({ modkey }, "h", function()
		awful.tag.incmwfact(-0.05)
	end, { description = "Decrease master width factor", group = "layout" }),
	awful.key({ altkey, "Shift" }, "Down", function()
		awful.client.incwfact(0.05)
	end, { description = "Decrease master height factor", group = "layout" }),
	awful.key({ altkey, "Shift" }, "Up", function()
		awful.client.incwfact(-0.05)
	end, { description = "Increase master height factor", group = "layout" }),
	awful.key({ modkey, "Shift" }, "Left", function()
		awful.tag.incnmaster(1, nil, true)
	end, { description = "Increase the number of master clients", group = "layout" }),
	awful.key({ modkey, "Shift" }, "Right", function()
		awful.tag.incnmaster(-1, nil, true)
	end, { description = "Decrease the number of master clients", group = "layout" }),
	awful.key({ modkey, "Control" }, "Left", function()
		awful.tag.incncol(1, nil, true)
	end, { description = "Increase the number of columns", group = "layout" }),
	awful.key({ modkey, "Control" }, "Right", function()
		awful.tag.incncol(-1, nil, true)
	end, { description = "Decrease the number of columns", group = "layout" }),
	awful.key({ modkey }, "space", function()
		awful.layout.inc(1)
	end, { description = "Select next", group = "layout" }),
	awful.key({ modkey }, "y", function()
		awful.client.floating.toggle()
	end, { description = "Select previous", group = "layout" }),
	awful.key({ modkey, "Control" }, "n", function()
		local c = awful.client.restore()
		-- Focus restored client
		if c then
			_G.client.focus = c
			c:raise()
		end
	end, { description = "restore minimized", group = "client" }),

	-- Widgets popups
	--[[awful.key(
    {altkey},
    'h',
    function()
      if beautiful.fs then
        beautiful.fs.show(7)
      end
    end,
    {description = 'Show filesystem', group = 'widgets'}
  ),
  awful.key(
    {altkey},
    'w',
    function()
      if beautiful.weather then
        beautiful.weather.show(7)
      end
    end,
    {description = 'Show weather', group = 'widgets'}
  ),--]]
	-- Brightness
	awful.key({}, "XF86MonBrightnessUp", function()
		awful.spawn("xbacklight -inc 10")
	end, { description = "+10%", group = "hotkeys" }),
	awful.key({}, "XF86MonBrightnessDown", function()
		awful.spawn("xbacklight -dec 10")
	end, { description = "-10%", group = "hotkeys" }),
	-- ALSA volume control
	awful.key({}, "XF86AudioRaiseVolume", function()
		awful.spawn("pactl set-sink-volume 0 +1%")
	end, { description = "volume up", group = "hotkeys" }),
	awful.key({}, "XF86AudioLowerVolume", function()
		awful.spawn("pactl set-sink-volume 0 -1%")
	end, { description = "volume down", group = "hotkeys" }),
	awful.key({}, "XF86AudioMute", function()
		awful.spawn("pactl set-sink-volume 0 toggle")
	end, { description = "toggle mute", group = "hotkeys" }),
	awful.key({}, "XF86AudioNext", function()
		awful.spawn("playerctl next")
	end, { description = "next", group = "hotkeys" }),
	awful.key({}, "XF86AudioPrev", function()
		awful.spawn("playerctl previous")
	end, { description = "previous", group = "hotkeys" }),
	awful.key({}, "XF86AudioPlay", function()
		awful.spawn(
			"dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause"
		)
	end, { description = "player/pause", group = "hotkeys" }),
	awful.key({}, "XF86PowerDown", function()
		--
	end, { description = "toggle mute", group = "hotkeys" }),
	awful.key({}, "XF86PowerOff", function()
		_G.exit_screen_show()
	end, { description = "toggle mute", group = "hotkeys" }),
	-- Screen management
	awful.key(
		{ modkey },
		"o",
		awful.client.movetoscreen,
		{ description = "move window to next screen", group = "client" }
	),
	-- Open default program for tag
	--awful.key({ modkey }, "t", function()
	--awful.spawn(awful.screen.focused().selected_tag.defaultApp, {
	--tag = _G.mouse.screen.selected_tag,
	--placement = awful.placement.bottom_right,
	--})
	--end, { description = "Open default program for tag/workspace", group = "tag" }),
	-- Custom hotkeys
	-- Lutris hotkey
	--awful.key({ modkey }, "g", function()
	--	awful.util.spawn_with_shell("lutris")
	--end),
	-- System Monitor hotkey
	awful.key({ modkey }, "m", function()
		awful.util.spawn_with_shell("mate-system-monitor")
	end),
	-- File Manager
	awful.key({ modkey }, "t", function()
		awful.util.spawn(apps.default.files)
	end, { description = "filebrowser", group = "hotkeys" }),
	-- Emoji Picker
	awful.key({ modkey }, "a", function()
		awful.util.spawn_with_shell("ibus emoji")
	end, { description = "Open the ibus emoji picker to copy an emoji to your clipboard", group = "hotkeys" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
local tag_keys = { "a", "s", "d", "f", "g", "6", "7", "8", "9", "0" }
for i = 1, 9 do
	-- Hack to only show tags 1 and 9 in the shortcut window (mod+s)
	local descr_view, descr_toggle, descr_move, descr_toggle_focus
	if i == 1 or i == 9 then
		descr_view = { description = "view tag #", group = "tag" }
		descr_toggle = { description = "toggle tag #", group = "tag" }
		descr_move = { description = "move focused client to tag #", group = "tag" }
		descr_toggle_focus = { description = "toggle focused client on tag #", group = "tag" }
	end
	globalKeys = awful.util.table.join(
		globalKeys,
		-- View tag only.
		--awful.key({ modkey }, "#" .. i + 9, function()
		awful.key({ modkey }, tag_keys[i], function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				tag:view_only()
			end
		end, descr_view),
		-- Toggle tag display.
		--awful.key({ modkey, "Control" }, "#" .. i + 9, function()
		awful.key({ modkey, "Control" }, tag_keys[i], function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				awful.tag.viewtoggle(tag)
			end
		end, descr_toggle),
		-- Move client to tag.
		--awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
		awful.key({ modkey, altkey }, tag_keys[i], function()
			if _G.client.focus then
				local tag = _G.client.focus.screen.tags[i]
				if tag then
					_G.client.focus:move_to_tag(tag)
					tag:view_only()
				end
			end
		end, descr_move),
		-- Toggle tag on focused client.
		--awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
		awful.key({ modkey, "Control", "Shift" }, tag_keys[i], function()
			if _G.client.focus then
				local tag = _G.client.focus.screen.tags[i]
				if tag then
					_G.client.focus:toggle_tag(tag)
				end
			end
		end, descr_toggle_focus)
	)
end

--for i = 1, 9 do
--	globalkeys = awful.util.table.join(
--		globalkeys,
--		-- View tag only.
--		--awful.key({ modkey }, "#" .. i + 9, function()
--		awful.key({ modkey }, tag_keys[i], function()
--			local screen = awful.screen.focused()
--			local tag = screen.tags[i]
--			if tag then
--				tag:view_only()
--			end
--		end, { description = "view tag #" .. i, group = "tag" }),
--		-- Toggle tag display.
--		awful.key({ modkey, "Control" }, tag_keys[i], function()
--			local screen = awful.screen.focused()
--			local tag = screen.tags[i]
--			if tag then
--				awful.tag.viewtoggle(tag)
--			end
--		end, { description = "toggle tag #" .. i, group = "tag" }),
--		-- Move client to tag.
--		awful.key({ modkey, "Mod1" }, tag_keys[i], function()
--			if client.focus then
--				local tag = client.focus.screen.tags[i]
--				if tag then
--					client.focus:move_to_tag(tag)
--					tag:view_only()
--				end
--			end
--		end, { description = "move focused client to tag #" .. i, group = "tag" }),
--		-- Toggle tag on focused client.
--		awful.key({ modkey, "Control", "Mod1" }, tag_keys[i], function()
--			if client.focus then
--				local tag = client.focus.screen.tags[i]
--				if tag then
--					client.focus:toggle_tag(tag)
--				end
--			end
--		end, { description = "toggle focused client on tag #" .. i, group = "tag" })
--	)
--end

return globalKeys
