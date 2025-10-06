vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.opt.spelllang = "en_au,en_us,en_gb"
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.mouse = "a"
vim.opt.wrap = false
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
-- Sync clipboard between OS and Neovim. See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- `:help 'list'`
-- `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Add packages
require("plugin.snacks")
vim.pack.add({
		{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
		{ src = "https://github.com/akinsho/toggleterm.nvim" },
		{ src = "https://github.com/folke/zen-mode.nvim" },
		{ src = "https://github.com/saghen/blink.cmp",
			version = vim.version.range('1.x'),
		},
		{ src = "https://github.com/BurntSushi/ripgrep" },	
		{ src = "https://github.com/sharkdp/fd" },
		{ src = "https://github.com/akinsho/toggleterm.nvim" },
		{ src = "https://github.com/lambdalisue/vim-suda" },
		{ src = "https://github.com/preservim/vim-pencil" },
		{ src = "https://github.com/folke/which-key.nvim" },
		{ src = "https://github.com/neovim/nvim-lspconfig" },
		{ src = "https://github.com/mason-org/mason.nvim" },
		{ src = "https://github.com/stevearc/oil.nvim" },
		{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})
require("plugin.obsidian")
require("plugin.colorscheme")
require"blink.cmp".setup({
	keymap = { preset = "super-tab" },
	appearance = {
		nerd_font_variant = "mono",
	},
	--enabled = function() return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype) end,
	completion = { documentation = { auto_show = false } },

	sources = {
		--default = { "lsp", "path", "snippets", "buffer" },
		default = { "lsp", "path", "snippets" },
		--per_filetype = {
		--markdown = {},
		--},
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})

require 'nvim-treesitter.configs'.setup {
	ensure_installed = {
		"bash", "rust", "c",
		"css", "html", "lua",
		"luadoc", "markdown", "markdown_inline",
		"vim", "vimdoc",
		"gdscript", "godot_resource", "gdshader",
	},
	auto_install = true,
	highlight = {
		enable = true,
		--disable = { "markdown" },
	}
}


-- --------------
-- Keybindings --
-- --------------

local map = vim.keymap.set
map("n", "<leader>w", ":update<cr>", { desc = "[W]rite" })
map("n", "<leader>W", ":SudaWrite<cr>", { desc = "[W]rite with sudo" })
map("n", "<leader>Q", ":quit<cr>", { desc = "[Q]uit" })
map({ "n", "v", "x" }, "<leader>fb", vim.lsp.buf.format, { desc = "Format buffer" })

-- TODO find a toggleterm alternative this is so bloated
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	hidden = true,
	dir = "git_dir",
	direction = "float",
	float_opts = {
		border = "curved",
	},
	on_open = function(term)
		vim.cmd("startinsert!")
		vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
	end,
	-- function to run on closing the terminal
	on_close = function(term)
		vim.cmd("startinsert!")
	end,
})
function _lazygit_toggle()
	lazygit:toggle()
end

map("n", "<leader>h", "<cmd>lua _lazygit_toggle()<CR>", { desc = "Open Lazygit", noremap = true, silent = true })


require "mason".setup()
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/completion') then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})
vim.cmd [[set completeopt+=menuone,noselect,popup]]

vim.lsp.enable({
	"lua_ls", "tinymist",
	"rust_analyzer", "clangd",
	"gdscript",
})
