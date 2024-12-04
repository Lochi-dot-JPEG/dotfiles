local awful = require("awful")
require("awful.autofocus")
local modkey = require("configuration.keys.mod").modKey
local altkey = require("configuration.keys.mod").altKey

local clientKeys = awful.util.table.join(
	awful.key({ modkey }, ";", function(c)
		c.fullscreen = not c.fullscreen
		c:raise()
	end, { description = "toggle fullscreen", group = "client" }),
	awful.key({ modkey }, "q", function(c)
		c:kill()
	end, { description = "close", group = "client" }),
	awful.key({ modkey }, "z", function(c)
		--local screen = awful.screen.focused()
		awful.client.setmaster(c)
	end, { description = "set focused as master", group = "client" })
)

return clientKeys
