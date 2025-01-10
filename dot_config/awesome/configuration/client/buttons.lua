local awful = require("awful")

--local modkey = require("configuration.keys.mod").modKey
local altkey = require("configuration.keys.mod").altKey

return awful.util.table.join(
	awful.button({}, 1, function(c)
		_G.client.focus = c
		c:raise()
	end),
	awful.button({ altkey, "Shift" }, 1, awful.mouse.client.move),
	awful.button({ altkey, "Shift" }, 3, awful.mouse.client.resize),
	awful.button({ altkey, "Shift" }, 4, function()
		awful.layout.inc(1)
	end),
	awful.button({ altkey, "Shift" }, 5, function()
		awful.layout.inc(-1)
	end)
)
