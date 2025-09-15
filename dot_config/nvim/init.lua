-- Set <space> as the leader keyini
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

vim.opt.spelllang = "en_au,en_us,en_gb"

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
-- Enable mouse mode
vim.opt.mouse = "a"

-- Disable word wrap
vim.opt.wrap = false

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim. See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Enable break indent
vim.opt.breakindent = true
vim.opt.smartindent = true

vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--	See `:help 'list'`
--	and `:help 'listchars'`
vim.opt.list = true
--vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
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

-- [[ Basic Keymaps ]]

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps

vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end,
	{ desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = 1, float = true }) end,
	{ desc = "Go to next [D]iagnostic message" })
--vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>w", ":write<cr>", { desc = "[W]rite" })
vim.keymap.set("n", "<leader>Q", ":quit<cr>", { desc = "[Q]uit" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
--
--	See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<leader>i", ":Nerdy<CR>", { desc = "Search [I]cons" })



-- Highlight when yanking (copying) text
--	Try it with `yap` in normal mode
--	See `:help vim.highlight.on_yank()`

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--		See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

local gdproject = io.open(vim.fn.getcwd() .. "/project.godot", "r")
if gdproject then
	io.close(gdproject)
	vim.fn.serverstart("./godothost")
end

require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically-- Lua

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{                 -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			require("which-key").setup()

			-- Document existing key chains
			require("which-key").add({
				{ "<leader>o",  group = "[O]bsidian" },
				{ "<leader>ov", group = "[O]bsidian [V]ault" },
				{ "<leader>c",  group = "[C]ode" },
				{ "<leader>c",  group = "[C]onvert" },
				{ "<leader>d",  group = "[D]ocument" },
				{ "<leader>r",  group = "[R]ename" },
				{ "<leader>s",  group = "[S]earch" },
				{ "<leader>w",  group = "[W]orkspace" },
				--{ "<leader>t", group = "[T]oggle" },
				{ "<leader>h",  group = "Git [H]unk",        mode = { "n", "v" } },
			})
		end,
	},
	{ -- Fuzzy Finder (files, lsp, etc)
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "master",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ -- If encountering errors, see telescope-fzf-native README for installation instructions
				"nvim-telescope/telescope-fzf-native.nvim",
				"BurntSushi/ripgrep",
				"sharkdp/fd",
				"nvim-lua/plenary.nvim",
				-- `build` is used to run some command when the plugin is installed/updated.
				-- This is only run then, not every time Neovim starts up.
				build = "make",

				-- `cond` is a condition used to determine whether this plugin should be
				-- installed and loaded.
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{ "nvim-telescope/telescope-ui-select.nvim" },

			-- Useful for getting pretty icons, but requires a Nerd Font.
			{ "nvim-tree/nvim-web-devicons",               enabled = vim.g.have_nerd_font },
		},
	},
	--	config = function()
	--		-- The easiest way to use Telescope, is to start by doing something like:
	--		--	:Telescope help_tags
	--		--
	--		-- After running this command, a window will open up and you're able to
	--		-- type in the prompt window. You'll see a list of `help_tags` options and
	--		-- a corresponding preview of the help.
	--		--
	--		-- Two important keymaps to use while in Telescope are:
	--		--	- Insert mode: <c-/>
	--		--	- Normal mode: ?
	--		--
	--		-- This opens a window that shows you all of the keymaps for the current
	--		-- Telescope picker. This is really useful to discover what Telescope can
	--		-- do as well as how to actually do it!

	--		-- [[ Configure Telescope ]]
	--		-- See `:help telescope` and `:help telescope.setup()`
	--		require("telescope").setup({
	--			-- You can put your default mappings / updates / etc. in here
	--			--	All the info you're looking for is in `:help telescope.setup()`
	--			--
	--			defaults = {
	--				mappings = {
	--					["i"] = {
	--						["<Tab>"] = require("telescope.actions").close,
	--						-- your custom insert mode mappings
	--					},
	--					["n"] = {
	--						["<Tab>"] = require("telescope.actions").close,

	--						-- your custom normal mode mappings
	--					},
	--					--i = { ['<c-enter>'] = 'to_fuzzy_refine' },
	--				},
	--				file_ignore_patterns = { "%.uid", "%.gif" },
	--			},
	--			-- pickers = {}
	--			extensions = {
	--				["ui-select"] = {
	--					require("telescope.themes").get_dropdown(),
	--				},
	--				hijack_netrw = true,
	--				mappings = {
	--					["i"] = {
	--						-- your custom insert mode mappings
	--					},
	--					["n"] = {
	--						-- your custom normal mode mappings
	--					},
	--				},
	--			},
	--		})
	--		require("telescope").load_extension("file_browser")
	--		-- Enable Telescope extensions if they are installed
	--		pcall(require("telescope").load_extension, "fzf")
	--		pcall(require("telescope").load_extension, "ui-select")
	--		pcall(require("telescope").load_extension, "notify")
	--		--require("telescope").extensions.notify.notify()

	--		-- See `:help telescope.builtin`
	--		local builtin = require("telescope.builtin")
	--		vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
	--		vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
	--		vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
	--		vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
	--		vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
	--		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
	--		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
	--		vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
	--		vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
	--		vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
	--		--vim.keymap.set("n", "<leader>st", builtin.colorscheme, { desc = "[S]earch [T]hemes" })

	--		vim.keymap.set("n", "<leader>ff", ":Telescope file_browser<CR>", { desc = "[F]ile [B]rowser" })

	--		-- open file_browser with the path of the current buffer
	--		vim.keymap.set("n", "<leader>ff", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

	--		-- Slightly advanced example of overriding default behavior and theme
	--		vim.keymap.set("n", "<leader>/", function()
	--			-- You can pass additional configuration to Telescope to change the theme, layout, etc.
	--			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
	--				winblend = 10,
	--				previewer = false,
	--			}))
	--		end, { desc = "[/] Fuzzily search in current buffer" })

	--		-- It's also possible to pass additional configuration options.
	--		--	See `:help telescope.builtin.live_grep()` for information about particular keys
	--		vim.keymap.set("n", "<leader>s/", function()
	--			builtin.live_grep({
	--				grep_open_files = true,
	--				prompt_title = "Live Grep in Open Files",
	--			})
	--		end, { desc = "[S]earch [/] in Open Files" })

	--		-- Shortcut for searching your Neovim configuration files
	--		vim.keymap.set("n", "<leader>sn", function()
	--			builtin.find_files({ cwd = "~/.local/share/chezmoi" })
	--		end, { desc = "[S]earch [N]eovim files" })
	--	end,
	--},

	{ -- LSP Configuration & Plugins
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Automatically install LSPs and related tools to stdpath for Neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",

			-- Useful status updates for LSP.
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ "j-hui/fidget.nvim", opts = {} },

			-- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
			-- used for completion, annotations and signatures of Neovim apis
			{ "folke/neodev.nvim", opts = {} },
		},
		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
				callback = function(event)
					local map = function(keys, func, desc)
						vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
					end

					map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
					map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
					map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
					map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")

					-- Fuzzy find all the symbols in your current document.
					--	Symbols are things like variables, functions, types, etc.
					map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")

					-- Fuzzy find all the symbols in your current workspace.
					--	Similar to document symbols, except searches over your entire project.
					map(
						"<leader>ws",
						require("telescope.builtin").lsp_dynamic_workspace_symbols,
						"[W]orkspace [S]ymbols"
					)

					-- Rename the variable under your cursor.
					--	Most Language Servers support renaming across files, etc.
					map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

					-- Execute a code action, usually your cursor needs to be on top of an error
					-- or a suggestion from your LSP for this to activate.
					map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

					-- Opens a popup that displays documentation about the word under your cursor
					--	See `:help K` for why this keymap.
					map("K", vim.lsp.buf.hover, "Hover Documentation")

					-- WARN: This is not Goto Definition, this is Goto Declaration.
					--	For example, in C this would take you to the header.
					map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

					-- The following two autocommands are used to highlight references of the
					-- word under your cursor when your cursor rests there for a little while.
					--		See `:help CursorHold` for information about when this is executed
					--
					-- When you move your cursor, the highlights will be cleared (the second autocommand).
					local client = vim.lsp.get_client_by_id(event.data.client_id)
					if client and client.server_capabilities.documentHighlightProvider then
						vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
							buffer = event.buf,
							callback = vim.lsp.buf.document_highlight,
						})

						vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
							buffer = event.buf,
							callback = vim.lsp.buf.clear_references,
						})
					end
				end,
			})

			-- lsp servers and clients are able to communicate to each other what features they support.
			--	by default, neovim doesn't support everything that is in the lsp specification.
			--	when you add nvim-cmp, luasnip, etc. neovim now has *more* capabilities.
			--	so, we create new capabilities with nvim cmp, and then broadcast that to the servers.

			--local capabilities = vim.lsp.protocol.make_client_capabilities()
			--capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

			local capabilities = require("blink.cmp").get_lsp_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig["lua_ls"].setup({ capabilities = capabilities })

			-- Enable the following language servers
			--	Feel free to add/remove any LSPs that you want here. They will automatically be installed.
			require("lspconfig").gdscript.setup(capabilities)
			-- enable the following language servers
			--	feel free to add/remove any lsps that you want here. they will automatically be installed.
			--
			--	Add any additional override configuration in the following tables. Available keys are:
			--	- cmd (table): Override the default command used to start the server
			--	- filetypes (table): Override the default list of associated filetypes for the server
			--	- capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
			--	- settings (table): Override the default settings passed when initializing the server.
			--		For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
			local servers = {
				-- clangd = {},
				-- gopls = {},
				-- pyright = {},
				-- rust_analyzer = {},
				-- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
				--
				-- Some languages (like typescript) have entire language plugins that can be useful:
				--		https://github.com/pmizio/typescript-tools.nvim
				--
				-- But for many setups, the LSP (`tsserver`) will work just fine
				-- tsserver = {},
				--

				lua_ls = {
					-- cmd = {...},
					-- filetypes = { ...},
					-- capabilities = {},
					settings = {
						Lua = {
							completion = {
								callSnippet = "Replace",
							},
							-- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
							-- diagnostics = { disable = { 'missing-fields' } },
						},
					},
				},
			}

			-- Ensure the servers and tools above are installed
			--	To check the current status of installed tools and/or manually install
			--	other tools, you can run
			--		:Mason
			--
			--	You can press `g?` for help in this menu.
			require("mason").setup()

			-- You can add other tools here that you want Mason to install
			-- for you, so that they are available from within Neovim.
			local ensure_installed = vim.tbl_keys(servers or {})
			vim.list_extend(ensure_installed, {
				--"stylua", -- Used to format Lua code
				"gdtoolkit",
				"rust-analyzer",
			})
			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						local server = servers[server_name] or {}
						-- This handles overriding only values explicitly passed
						-- by the server configuration above. Useful when disabling
						-- certain features of an LSP (for example, turning off formatting for tsserver)
						server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
						require("lspconfig")[server_name].setup(server)
					end,
				},
			})
		end,
	},

	{ -- Autoformat
		"stevearc/conform.nvim",
		lazy = false,
		keys = {
			{
				"<leader>fb",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "",
				desc = "[F]ormat [B]uffer",
			},
		},
		opts = {
			notify_on_error = false,
			format_on_save = false,
			--	function(bufnr)
			--	-- Disable "format_on_save lsp_fallback" for languages that don't
			--	-- have a well standardized coding style. You can add additional
			--	-- languages here or re-enable it for the disabled ones.
			--	local disable_filetypes = { c = true, cpp = true }
			--	return {
			--		timeout_ms = 500,
			--		lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			--	}
			--end,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				-- javascript = { { "prettierd", "prettier" } },
			},
		},
	},
	{
		"saghen/blink.cmp",
		-- optional: provides snippets for the snippet source
		dependencies = { "rafamadriz/friendly-snippets" },

		-- use a release tag to download pre-built binaries
		version = "1.*",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = { preset = "super-tab" },

			appearance = {
				nerd_font_variant = "mono",
			},

			enabled = function() return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype) end,
			completion = { documentation = { auto_show = false } },

			sources = {
				--default = { "lsp", "path", "snippets", "buffer" },
				default = { "lsp", "path", "snippets" },
				--per_filetype = {
				--markdown = {},
				--},
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
	-- Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					--component_separators = { left = "", right = "" },
					--section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = {
						"mode",
					},
					lualine_b = { "diagnostics" },
					lualine_c = { "filename" },
					--lualine_x = { "filetype" },
					lualine_x = {},
					lualine_y = {
						{
							--"datetime",
							-- options: default, us, uk, iso, or your own format string ("%H:%M", etc..)
							--style = "%I:%M %p",
						},
					},
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
	{ -- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"bash",
				"rust",
				"c",
				"css",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"vim",
				"hyprlang",
				"vimdoc",
				"gdscript",
				"godot_resource",
				"gdshader",
			},
			-- Autoinstall languages that are not installed
			auto_install = true,
			highlight = {
				enable = true,
				-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
				--	If you are experiencing weird indenting issues, add the language to
				--	the list of additional_vim_regex_highlighting and disabled languages for indent.
				additional_vim_regex_highlighting = { "ruby" },
				disable = { "markdown" },
			},
			indent = { enable = true, disable = { "ruby", "gdscript" } },
		},
		config = function(_, opts)
			-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

			---@diagnostic disable-next-line: missing-fields
			require("nvim-treesitter.configs").setup(opts)

			-- There are additional nvim-treesitter modules that you can use to interact
			-- with nvim-treesitter. You should go explore a few and see what interests you:
			--
			--		- Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
			--		- Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
			--		- Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
		end,
	},

	{ import = "plugins" },
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
}, {
	rocks = {
		hererocks = true, -- recommended if you do not have global installation of Lua 5.1.
	},
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et

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

vim.keymap.set(
	"n",
	"<leader>h",
	"<cmd>lua _lazygit_toggle()<CR>",
	{ desc = "Open Lazygit", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>ct",
	":set tabstop=4<cr>:set noexpandtab<cr>:%retab!<cr>",
	{ desc = "Convert spaces to [T]abs", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>cT8",
	":set tabstop=8<cr>:set noexpandtab<cr>:%retab!<cr>",
	{ desc = "Convert 8 spaces to [T]abs", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>cT2",
	":set tabstop=2<cr>:set noexpandtab<cr>:%retab!<cr>",
	{ desc = "Convert 2 spaces to [T]abs", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>cs",
	":set noexpandtab!<cr>:%retab!<cr>",
	{ desc = "Convert tabs to [S]paces", noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>ts", function()
	vim.opt.spell = not (vim.opt.spell:get())
end, { desc = "[T]oggle [S]pelling", noremap = true, silent = true })

-- put this after lazy setup
