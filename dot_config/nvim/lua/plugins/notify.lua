--[[config = function()
			local notify = require("notify")
		vim.keymap.set("n", "<leader>nh", function()
			notify.history()
		end)
	end,]]
return {
	"rcarriga/nvim-notify",
	lazy = false,

	config = function()
		local notify = require("notify")
		notify.setup({
			background_colour = "#000000",
			stages = "fade",
			timeout = 4000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		})
		vim.notify = notify

		--nmap("<leader>nn", "<cmd>Notifications<cr>", { desc = "Show Notifications Log" })
		vim.keymap.set("n", "<leader>nn", "<cmd>Notifications<cr>", { desc = "Show Notification Log" })
		vim.keymap.set("n", "<leader>nd", function()
			notify.dismiss({ silent = true, pending = true })
		end, { desc = "Dismiss All Notifications" })

		vim.keymap.set("n", "<leader>nh", function()
			notify.history()
		end, { desc = "Show Past Notifications" })
	end,
}
