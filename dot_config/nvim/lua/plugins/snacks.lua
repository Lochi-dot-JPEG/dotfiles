return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = false },
		explorer = { enabled = true },
		indent = { enabled = false },
		input = { enabled = true },
		picker = {
			enabled = true,
			layout = {
				preset = "dropdown",
			},
		},
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		-- Top Pickers & Explorer
		{ "<leader><space>", function() Snacks.picker.smart() end,                                   desc = "Smart Find Files" },
		{ "<leader>,",       function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
		{ "<leader>:",       function() Snacks.picker.command_history() end,                         desc = "Command History" },
		{ "<leader>n",       function() Snacks.picker.notifications() end,                           desc = "Notification History" },
		{ "<leader>e",       function() Snacks.explorer() end,                                       desc = "File Explorer" },

		-- find
		{ "<leader>sn",      function() Snacks.picker.files({ cwd = "~/.local/share/chezmoi" }) end, desc = "Find Config File" },
		{ "<leader>so",      function() Snacks.picker.files({ cwd = "~/Brain" }) end,                desc = "Search Obsidian" },
		{ "<leader>sf",      function() Snacks.picker.files() end,                                   desc = "Find Files" },
		{ "<leader>sr",      function() Snacks.picker.recent() end,                                  desc = "Recent Files" },

		-- Grep
		{ "<leader>sg",      function() Snacks.picker.grep() end,                                    desc = "Grep" },
		{ "<leader>sw",      function() Snacks.picker.grep_word() end,                               desc = "Visual selection or word", mode = { "n", "x" } },

		-- search
		{ '<leader>s/',      function() Snacks.picker.search_history() end,                          desc = "Search History" },
		{ "<leader>q",       function() Snacks.picker.diagnostics() end,                             desc = "Diagnostics" },
		{ "<leader>sh",      function() Snacks.picker.help() end,                                    desc = "Help Pages" },
		{ "<leader>i",       function() Snacks.picker.icons() end,                                   desc = "Icons" },
		{ "<leader>sm",      function() Snacks.picker.man() end,                                     desc = "Man Pages" },
		{ "<leader>sp",      function() Snacks.picker.lazy() end,                                    desc = "Search for Plugin Spec" },
		{ "<leader>sq",      function() Snacks.picker.qflist() end,                                  desc = "Quickfix List" },
		{ "<leader>s'",      function() Snacks.picker.resume() end,                                  desc = "Resume" },
		{ "<leader>sc",      function() Snacks.picker.colorschemes() end,                            desc = "Colorschemes" },

		-- LSP
		{ "gd",              function() Snacks.picker.lsp_definitions() end,                         desc = "Goto Definition" },
		{ "gD",              function() Snacks.picker.lsp_declarations() end,                        desc = "Goto Declaration" },
		{ "gr",              function() Snacks.picker.lsp_references() end,                          nowait = true,                     desc = "References" },
		{ "gI",              function() Snacks.picker.lsp_implementations() end,                     desc = "Goto Implementation" },
		{ "gy",              function() Snacks.picker.lsp_type_definitions() end,                    desc = "Goto T[y]pe Definition" },
		{ "<leader>ss",      function() Snacks.picker.lsp_symbols() end,                             desc = "LSP Symbols" },
		{ "<leader>sS",      function() Snacks.picker.lsp_workspace_symbols() end,                   desc = "LSP Workspace Symbols" },
	},
}
