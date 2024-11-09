return {
	"preservim/vim-pencil",
	config = function()
		vim.api.nvim_create_augroup("pencil", { clear = true })

		vim.g.pencil_textwidth = 80
		-- Markdown settings
		vim.api.nvim_create_autocmd("FileType", {
			group = "pencil",
			pattern = { "markdown", "mkd" },
			callback = function()
				vim.fn["pencil#init"]({ wrap = "hard" })
				vim.opt_local.conceallevel = 2
			end,
		})

		--	vim.api.nvim_create_autocmd("FileType", {
		--		group = "pencil",
		--		pattern = "text",
		--		callback = function()
		--			vim.fn["pencil#init"]({ wrap = "hard" })
		--		end,
		--	})
	end,
}
