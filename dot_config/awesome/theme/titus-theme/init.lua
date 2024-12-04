local filesystem = require("gears.filesystem")
local mat_colors = require("theme.mat-colors")
local theme_dir = filesystem.get_configuration_dir() .. "/theme"
local dpi = require("beautiful").xresources.apply_dpi

local theme = {}
theme.icons = theme_dir .. "/icons/"
theme.font = "JetBrains Mono 10"

-- Colors Pallets

-- Primary
theme.primary = mat_colors.pink
theme.primary.hue_500 = "#f5c2e7"
-- Accent
theme.accent = mat_colors.pink

-- Background
theme.background = mat_colors.grey

theme.background.hue_800 = "#181825"
theme.background.hue_900 = "##1e1e2e"

local awesome_overrides = function(theme)
	--
end
return {
	theme = theme,
	awesome_overrides = awesome_overrides,
}
