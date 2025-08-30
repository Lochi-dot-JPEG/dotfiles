return {
	"obsidian-nvim/obsidian.nvim",
	version = "3.*", -- recommended, use latest release instead of latest commit
	lazy = false,
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--	 -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--	 -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--	 -- refer to `:h file-pattern` for more examples
	--	 "BufReadPre path/to/my-vault/*.md",
	--	 "BufNewFile path/to/my-vault/*.md",
	-- },
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		workspaces = {
			{
				name = "brain",
				path = "~/Brain",
			},
		},

		notes_subdir = "notes",
		daily_notes = {
			-- Optional, if you keep daily notes in a separate directory.
			folder = "notes/dailies",
			-- Optional, if you want to change the date format for the ID of daily notes.
			date_format = "%Y-%m-%d",
			-- Optional, if you want to change the date format of the default alias of daily notes.
			alias_format = "%B %-d, %Y",
			-- Optional, default tags to add to each new daily note created.
			default_tags = { "daily-notes" },
			-- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
			template = "daily.md",
			-- Optional, if you want `Obsidian yesterday` to return the last work day or `Obsidian tomorrow` to return the next work day.
			workdays_only = false,
		},
		completion = {
			-- Enables completion using nvim_cmp
			nvim_cmp = false,
			-- Enables completion using blink.cmp
			blink = true,
			-- Trigger completion at 2 chars.
			min_chars = 2,
		},
		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function.
			-- Functions are called with obsidian.TemplateContext objects as their sole parameter.
			-- See: https://github.com/obsidian-nvim/obsidian.nvim/wiki/Template#substitutions
			substitutions = {},

			-- A map for configuring unique directories and paths for specific templates
			--- See: https://github.com/obsidian-nvim/obsidian.nvim/wiki/Template#customizations
			customizations = {},
		},
		-- see below for full list of options 👇
	},

	keys = {
		{ "<leader>og", "<cmd>ObsidianSearch<cr>", desc = "[G]rep" },
		{ "<leader>on", "<cmd>ObsidianNew<cr>", desc = "[N]ew" },
		{ "<leader>ot", "<cmd>ObsidianTemplate<cr>", desc = "[T]emplate" },
		{ "<leader>od", "<cmd>ObsidianToday<cr>", desc = "[D]aily Note" },
		{ "<leader>ol", "<cmd>ObsidianToday 1<cr>", desc = "[l]Tomorrow" },
		{ "<leader>oh", "<cmd>ObsidianToday -1<cr>", desc = "[h]Yesterday" },
		{ "<leader>os", "<cmd>ObsidianDailies -1 -365<cr>", desc = "[D]ailies [S]earch" },
		{ "<leader>oo", "<cmd>ObsidianOpen<cr>", desc = "[O]pen Desktop App" },
		--{
		--"<leader>so",
		--function()
		--builtin.find_files({ cwd = "~/vaults/brain" })
		--end,
		--desc = "[S]earch [O]bsidian Files",
		--},
	},
}
