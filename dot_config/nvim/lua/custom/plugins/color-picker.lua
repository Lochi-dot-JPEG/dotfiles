return {
	"ziontee113/color-picker.nvim",
	config = function()
		require("color-picker").setup()
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
		vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
	end,
}
