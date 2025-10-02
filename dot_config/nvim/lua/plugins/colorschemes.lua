return {
	{
		"catppuccin/nvim",
	},
	{
		"shaunsingh/nord.nvim",
	},
	{
		"rose-pine/neovim",
	},
	{
		"numToStr/Sakura.nvim",
	},
	{
		"vague2k/vague.nvim",
	},
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_enable_italic = true
			vim.g.gruvbox_material_disable_italic_comment = 0
			vim.g.gruvbox_material_background = "soft"
			vim.g.gruvbox_material_foreground = "material"
			vim.g.gruvbox_material_transparent_background = 0
			--vim.g.gruvbox_material_colors_override = { bg0 = { "#0000", 0 }, bg2 = { "#282828", 235 } }
			--vim.g.gruvbox_material_colors_override = { 'bg0': ['#00000000', '234']}
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
}
