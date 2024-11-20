return {
	{
		"nvchad/ui",
		lazy = false,
		config = function()
			require("nvchad")
			vim.keymap.set("n", "<leader>st", function()
				require("nvchad.themes").open()
			end, {})
		end,
	},
	{
		"nvchad/base46",
		lazy = false,
		build = function()
			require("base46").load_all_highlights()
		end,
		config = function()
			require("nvconfig").base46.theme = "kanagawa"
			require("base46").load_all_highlights()
		end,
	},
	-- Lua (chameleon.lua)
	"nvchad/volt", -- optional, needed for theme switcher
	{
		"shaun-mathew/Chameleon.nvim",
		config = function()
			require("chameleon").setup()
		end,
	},
}
