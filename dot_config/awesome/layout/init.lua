local awful = require("awful")
local top_panel = require("layout.top-panel")

-- Create a wibox for each screen and add it
awful.screen.connect_for_each_screen(function(s)
	-- Create the Top bar
	s.top_panel = top_panel(s)
end)

-- Hide bars when app go fullscreen
function updateBarsVisibility()
	for s in screen do
		if s.selected_tag then
			local fullscreen = s.selected_tag.fullscreenMode
			-- Order matter here for shadow
			s.top_panel.visible = not fullscreen
		end
	end
end

_G.tag.connect_signal("property::selected", function(t)
	updateBarsVisibility()
end)

_G.client.connect_signal("property::fullscreen", function(c)
	c.screen.selected_tag.fullscreenMode = c.fullscreen
	updateBarsVisibility()
end)

_G.client.connect_signal("unmanage", function(c)
	if c.fullscreen then
		c.screen.selected_tag.fullscreenMode = false
		updateBarsVisibility()
	end
end)

local function move_mouse_onto_focused_client(c)
	if mouse.object_under_pointer() ~= c then
		local geometry = c:geometry()
		local x = geometry.x + geometry.width / 2
		local y = geometry.y + geometry.height / 2
		mouse.coords({ x = x, y = y }, true)
	end
end
_G.client.connect_signal("focus", move_mouse_onto_focused_client)

