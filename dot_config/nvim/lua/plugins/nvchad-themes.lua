return {
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.api.nvim_create_autocmd('ColorScheme', {
				group = vim.api.nvim_create_augroup('custom_highlights_gruvboxmaterial', {}),
				pattern = 'gruvbox-material',
				callback = function()
					local config = vim.fn['gruvbox_material#get_configuration']()
					local palette = vim.fn['gruvbox_material#get_palette'](config.background, config.foreground,
						config.colors_override)
					local set_hl = vim.fn['gruvbox_material#highlight']


					--:lua local config = vim.fn['gruvbox_material#get_configuration'](); local palette = vim.fn['gruvbox_material#get_palette'](config.background, config.foreground, config.colors_override); print(vim.inspect(palette))
					set_hl('MsgArea', palette.none, palette.bg1)
					set_hl('IncSearch', palette.none, palette.bg_visual_red)
				end
			})
			vim.g.gruvbox_material_enable_italic = true
			vim.g.gruvbox_material_disable_italic_comment = 0
			vim.g.gruvbox_material_background = "medium"
			vim.g.gruvbox_material_foreground = "material"
			vim.g.gruvbox_material_transparent_background = 1
			--vim.g.gruvbox_material_colors_override = { bg0 = { "#0000", 0 }, bg2 = { "#282828", 235 } }
			--vim.g.gruvbox_material_colors_override = { 'bg0': ['#00000000', '234']}
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
}
