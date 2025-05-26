return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		vim.g.gruvbox_material_enable_italic = true
		vim.g.gruvbox_material_background = "medium"
		vim.g.gruvbox_material_foreground = "material"
		vim.g.gruvbox_material_transparent_background = 2
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
-- return {
--	{
--		"nvchad/ui",
--		lazy = false,
--		config = function()
--			require("nvchad")
--			vim.keymap.set("n", "<leader>st", function()
--				require("nvchad.themes").open()
--			end, {})
--		end,
--	},
--	{
--		"nvchad/base46",
--		lazy = false,
--		build = function()
--			require("base46").load_all_highlights()
--		end,
--		config = function()
--			require("nvconfig").base46.theme = "kanagawa"
--			require("base46").load_all_highlights()
--		end,
--	},
--	-- Lua (chameleon.lua)
--	"nvchad/volt", -- optional, needed for theme switcher
--	{
--		"shaun-mathew/Chameleon.nvim",
--		config = function()
--			require("chameleon").setup()
--		end,
--	},
--}
