local M = {}

function M.init()
	local dashboard = require("alpha.themes.dashboard")

	--local filePath1 = os.getenv("HOME") .. "/.config/nvim/dashboard/ayat.txt"
	vim.api.nvim_set_hl(0, "I2A0", { fg = "#000000" })
	vim.api.nvim_set_hl(0, "I2A1", { fg = "#87402c" })
	vim.api.nvim_set_hl(0, "I2A2", { fg = "#cb5c27" })
	vim.api.nvim_set_hl(0, "I2A3", { fg = "#e5d4b3" })
	vim.api.nvim_set_hl(0, "I2A4", { fg = "#302e30" })
	vim.api.nvim_set_hl(0, "I2A5", { fg = "#b68972" })
	vim.api.nvim_set_hl(0, "I2A6", { fg = "#4a5c6d" })
	vim.api.nvim_set_hl(0, "I2A7", { fg = "#def0ea" })
	vim.api.nvim_set_hl(0, "I2A8", { fg = "#5479a8" })
	vim.api.nvim_set_hl(0, "I2A9", { fg = "#9cbdf0" })

	dashboard.section.header.opts.hl = {
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A1", 60, 61 },
			{ "I2A2", 61, 62 },
			{ "I2A2", 62, 63 },
			{ "I2A2", 63, 64 },
			{ "I2A1", 64, 65 },
			{ "I2A2", 65, 66 },
			{ "I2A2", 66, 67 },
			{ "I2A1", 67, 68 },
			{ "I2A2", 68, 69 },
			{ "I2A2", 69, 70 },
			{ "I2A1", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A2", 60, 61 },
			{ "I2A2", 61, 62 },
			{ "I2A2", 62, 63 },
			{ "I2A2", 63, 64 },
			{ "I2A2", 64, 65 },
			{ "I2A2", 65, 66 },
			{ "I2A2", 66, 67 },
			{ "I2A2", 67, 68 },
			{ "I2A2", 68, 69 },
			{ "I2A2", 69, 70 },
			{ "I2A1", 70, 71 },
			{ "I2A1", 71, 72 },
			{ "I2A1", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A0", 60, 61 },
			{ "I2A0", 61, 62 },
			{ "I2A1", 62, 63 },
			{ "I2A3", 63, 64 },
			{ "I2A3", 64, 65 },
			{ "I2A1", 65, 66 },
			{ "I2A1", 66, 67 },
			{ "I2A1", 67, 68 },
			{ "I2A2", 68, 69 },
			{ "I2A2", 69, 70 },
			{ "I2A2", 70, 71 },
			{ "I2A2", 71, 72 },
			{ "I2A2", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A0", 60, 61 },
			{ "I2A0", 61, 62 },
			{ "I2A3", 62, 63 },
			{ "I2A3", 63, 64 },
			{ "I2A3", 64, 65 },
			{ "I2A3", 65, 66 },
			{ "I2A3", 66, 67 },
			{ "I2A3", 67, 68 },
			{ "I2A2", 68, 69 },
			{ "I2A2", 69, 70 },
			{ "I2A1", 70, 71 },
			{ "I2A2", 71, 72 },
			{ "I2A4", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A0", 60, 61 },
			{ "I2A0", 61, 62 },
			{ "I2A4", 62, 63 },
			{ "I2A5", 63, 64 },
			{ "I2A1", 64, 65 },
			{ "I2A5", 65, 66 },
			{ "I2A5", 66, 67 },
			{ "I2A1", 67, 68 },
			{ "I2A2", 68, 69 },
			{ "I2A2", 69, 70 },
			{ "I2A1", 70, 71 },
			{ "I2A2", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A0", 60, 61 },
			{ "I2A4", 61, 62 },
			{ "I2A6", 62, 63 },
			{ "I2A7", 63, 64 },
			{ "I2A5", 64, 65 },
			{ "I2A2", 65, 66 },
			{ "I2A2", 66, 67 },
			{ "I2A2", 67, 68 },
			{ "I2A2", 68, 69 },
			{ "I2A1", 69, 70 },
			{ "I2A2", 70, 71 },
			{ "I2A2", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A5", 60, 61 },
			{ "I2A1", 61, 62 },
			{ "I2A1", 62, 63 },
			{ "I2A1", 63, 64 },
			{ "I2A2", 64, 65 },
			{ "I2A1", 65, 66 },
			{ "I2A7", 66, 67 },
			{ "I2A7", 67, 68 },
			{ "I2A7", 68, 69 },
			{ "I2A5", 69, 70 },
			{ "I2A2", 70, 71 },
			{ "I2A2", 71, 72 },
			{ "I2A4", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A0", 18, 19 },
			{ "I2A0", 19, 20 },
			{ "I2A0", 20, 21 },
			{ "I2A0", 21, 22 },
			{ "I2A0", 22, 23 },
			{ "I2A0", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A4", 58, 59 },
			{ "I2A7", 59, 60 },
			{ "I2A6", 60, 61 },
			{ "I2A1", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A7", 65, 66 },
			{ "I2A7", 66, 67 },
			{ "I2A7", 67, 68 },
			{ "I2A7", 68, 69 },
			{ "I2A5", 69, 70 },
			{ "I2A2", 70, 71 },
			{ "I2A2", 71, 72 },
			{ "I2A4", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A4", 14, 15 },
			{ "I2A9", 15, 16 },
			{ "I2A9", 16, 17 },
			{ "I2A9", 17, 18 },
			{ "I2A9", 18, 19 },
			{ "I2A9", 19, 20 },
			{ "I2A9", 20, 21 },
			{ "I2A9", 21, 22 },
			{ "I2A9", 22, 23 },
			{ "I2A9", 23, 24 },
			{ "I2A9", 24, 25 },
			{ "I2A9", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A4", 57, 58 },
			{ "I2A3", 58, 59 },
			{ "I2A3", 59, 60 },
			{ "I2A7", 60, 61 },
			{ "I2A8", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A7", 64, 65 },
			{ "I2A7", 65, 66 },
			{ "I2A7", 66, 67 },
			{ "I2A7", 67, 68 },
			{ "I2A7", 68, 69 },
			{ "I2A1", 69, 70 },
			{ "I2A1", 70, 71 },
			{ "I2A1", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A4", 11, 12 },
			{ "I2A9", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A8", 14, 15 },
			{ "I2A8", 15, 16 },
			{ "I2A8", 16, 17 },
			{ "I2A8", 17, 18 },
			{ "I2A8", 18, 19 },
			{ "I2A8", 19, 20 },
			{ "I2A8", 20, 21 },
			{ "I2A8", 21, 22 },
			{ "I2A8", 22, 23 },
			{ "I2A8", 23, 24 },
			{ "I2A8", 24, 25 },
			{ "I2A8", 25, 26 },
			{ "I2A9", 26, 27 },
			{ "I2A9", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A4", 56, 57 },
			{ "I2A3", 57, 58 },
			{ "I2A3", 58, 59 },
			{ "I2A3", 59, 60 },
			{ "I2A3", 60, 61 },
			{ "I2A3", 61, 62 },
			{ "I2A7", 62, 63 },
			{ "I2A7", 63, 64 },
			{ "I2A7", 64, 65 },
			{ "I2A7", 65, 66 },
			{ "I2A7", 66, 67 },
			{ "I2A7", 67, 68 },
			{ "I2A4", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A4", 10, 11 },
			{ "I2A8", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A8", 14, 15 },
			{ "I2A8", 15, 16 },
			{ "I2A8", 16, 17 },
			{ "I2A8", 17, 18 },
			{ "I2A8", 18, 19 },
			{ "I2A8", 19, 20 },
			{ "I2A8", 20, 21 },
			{ "I2A8", 21, 22 },
			{ "I2A8", 22, 23 },
			{ "I2A8", 23, 24 },
			{ "I2A8", 24, 25 },
			{ "I2A8", 25, 26 },
			{ "I2A8", 26, 27 },
			{ "I2A8", 27, 28 },
			{ "I2A9", 28, 29 },
			{ "I2A4", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A4", 59, 60 },
			{ "I2A6", 60, 61 },
			{ "I2A3", 61, 62 },
			{ "I2A5", 62, 63 },
			{ "I2A7", 63, 64 },
			{ "I2A7", 64, 65 },
			{ "I2A7", 65, 66 },
			{ "I2A7", 66, 67 },
			{ "I2A0", 67, 68 },
			{ "I2A0", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 3, 6 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A9", 10, 11 },
			{ "I2A8", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A8", 14, 15 },
			{ "I2A8", 15, 16 },
			{ "I2A8", 16, 17 },
			{ "I2A6", 17, 18 },
			{ "I2A8", 18, 19 },
			{ "I2A8", 19, 20 },
			{ "I2A8", 20, 21 },
			{ "I2A8", 21, 22 },
			{ "I2A8", 22, 23 },
			{ "I2A8", 23, 24 },
			{ "I2A8", 24, 25 },
			{ "I2A8", 25, 26 },
			{ "I2A8", 26, 27 },
			{ "I2A8", 27, 28 },
			{ "I2A6", 28, 29 },
			{ "I2A9", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A4", 59, 60 },
			{ "I2A6", 60, 61 },
			{ "I2A6", 61, 62 },
			{ "I2A6", 62, 63 },
			{ "I2A6", 63, 64 },
			{ "I2A6", 64, 65 },
			{ "I2A6", 65, 66 },
			{ "I2A0", 66, 67 },
			{ "I2A0", 67, 68 },
			{ "I2A0", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A8", 10, 11 },
			{ "I2A8", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A6", 14, 15 },
			{ "I2A8", 15, 16 },
			{ "I2A8", 16, 17 },
			{ "I2A8", 17, 18 },
			{ "I2A8", 18, 19 },
			{ "I2A8", 19, 20 },
			{ "I2A8", 20, 21 },
			{ "I2A8", 21, 22 },
			{ "I2A8", 22, 23 },
			{ "I2A6", 23, 24 },
			{ "I2A6", 24, 25 },
			{ "I2A8", 25, 26 },
			{ "I2A8", 26, 27 },
			{ "I2A4", 27, 28 },
			{ "I2A6", 28, 29 },
			{ "I2A8", 29, 30 },
			{ "I2A8", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A4", 58, 59 },
			{ "I2A6", 59, 60 },
			{ "I2A8", 60, 61 },
			{ "I2A8", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A6", 63, 64 },
			{ "I2A6", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A0", 67, 68 },
			{ "I2A0", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A8", 10, 11 },
			{ "I2A8", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A5", 14, 15 },
			{ "I2A8", 15, 16 },
			{ "I2A6", 16, 17 },
			{ "I2A8", 17, 18 },
			{ "I2A8", 18, 19 },
			{ "I2A8", 19, 20 },
			{ "I2A8", 20, 21 },
			{ "I2A8", 21, 22 },
			{ "I2A6", 22, 23 },
			{ "I2A5", 23, 24 },
			{ "I2A8", 24, 25 },
			{ "I2A6", 25, 26 },
			{ "I2A5", 26, 27 },
			{ "I2A6", 27, 28 },
			{ "I2A6", 28, 29 },
			{ "I2A8", 29, 30 },
			{ "I2A8", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A6", 56, 57 },
			{ "I2A6", 57, 58 },
			{ "I2A8", 58, 59 },
			{ "I2A8", 59, 60 },
			{ "I2A8", 60, 61 },
			{ "I2A8", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A8", 67, 68 },
			{ "I2A0", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A4", 10, 11 },
			{ "I2A8", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A1", 14, 15 },
			{ "I2A5", 15, 16 },
			{ "I2A4", 16, 17 },
			{ "I2A4", 17, 18 },
			{ "I2A5", 18, 19 },
			{ "I2A8", 19, 20 },
			{ "I2A8", 20, 21 },
			{ "I2A5", 21, 22 },
			{ "I2A5", 22, 23 },
			{ "I2A1", 23, 24 },
			{ "I2A6", 24, 25 },
			{ "I2A1", 25, 26 },
			{ "I2A5", 26, 27 },
			{ "I2A8", 27, 28 },
			{ "I2A8", 28, 29 },
			{ "I2A9", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A6", 54, 55 },
			{ "I2A8", 55, 56 },
			{ "I2A8", 56, 57 },
			{ "I2A8", 57, 58 },
			{ "I2A8", 58, 59 },
			{ "I2A8", 59, 60 },
			{ "I2A8", 60, 61 },
			{ "I2A6", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A8", 67, 68 },
			{ "I2A0", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A4", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A6", 13, 14 },
			{ "I2A8", 14, 15 },
			{ "I2A1", 15, 16 },
			{ "I2A5", 16, 17 },
			{ "I2A5", 17, 18 },
			{ "I2A5", 18, 19 },
			{ "I2A5", 19, 20 },
			{ "I2A5", 20, 21 },
			{ "I2A5", 21, 22 },
			{ "I2A5", 22, 23 },
			{ "I2A5", 23, 24 },
			{ "I2A5", 24, 25 },
			{ "I2A6", 25, 26 },
			{ "I2A8", 26, 27 },
			{ "I2A8", 27, 28 },
			{ "I2A6", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A6", 52, 53 },
			{ "I2A8", 53, 54 },
			{ "I2A8", 54, 55 },
			{ "I2A8", 55, 56 },
			{ "I2A8", 56, 57 },
			{ "I2A8", 57, 58 },
			{ "I2A8", 58, 59 },
			{ "I2A8", 59, 60 },
			{ "I2A8", 60, 61 },
			{ "I2A6", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A8", 67, 68 },
			{ "I2A4", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A8", 13, 14 },
			{ "I2A4", 14, 15 },
			{ "I2A8", 15, 16 },
			{ "I2A1", 16, 17 },
			{ "I2A5", 17, 18 },
			{ "I2A5", 18, 19 },
			{ "I2A5", 19, 20 },
			{ "I2A5", 20, 21 },
			{ "I2A5", 21, 22 },
			{ "I2A5", 22, 23 },
			{ "I2A5", 23, 24 },
			{ "I2A4", 24, 25 },
			{ "I2A8", 25, 26 },
			{ "I2A4", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A4", 50, 51 },
			{ "I2A8", 51, 52 },
			{ "I2A8", 52, 53 },
			{ "I2A8", 53, 54 },
			{ "I2A8", 54, 55 },
			{ "I2A8", 55, 56 },
			{ "I2A8", 56, 57 },
			{ "I2A8", 57, 58 },
			{ "I2A8", 58, 59 },
			{ "I2A8", 59, 60 },
			{ "I2A6", 60, 61 },
			{ "I2A6", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A8", 67, 68 },
			{ "I2A4", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A0", 14, 15 },
			{ "I2A0", 15, 16 },
			{ "I2A0", 16, 17 },
			{ "I2A0", 17, 18 },
			{ "I2A4", 18, 19 },
			{ "I2A5", 19, 20 },
			{ "I2A1", 20, 21 },
			{ "I2A5", 21, 22 },
			{ "I2A5", 22, 23 },
			{ "I2A3", 23, 24 },
			{ "I2A0", 24, 25 },
			{ "I2A0", 25, 26 },
			{ "I2A0", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A4", 48, 49 },
			{ "I2A3", 49, 50 },
			{ "I2A3", 50, 51 },
			{ "I2A3", 51, 52 },
			{ "I2A5", 52, 53 },
			{ "I2A8", 53, 54 },
			{ "I2A8", 54, 55 },
			{ "I2A8", 55, 56 },
			{ "I2A8", 56, 57 },
			{ "I2A8", 57, 58 },
			{ "I2A8", 58, 59 },
			{ "I2A6", 59, 60 },
			{ "I2A6", 60, 61 },
			{ "I2A8", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A8", 67, 68 },
			{ "I2A8", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A0", 12, 13 },
			{ "I2A0", 13, 14 },
			{ "I2A4", 14, 15 },
			{ "I2A3", 15, 16 },
			{ "I2A9", 16, 17 },
			{ "I2A5", 17, 18 },
			{ "I2A5", 18, 19 },
			{ "I2A5", 19, 20 },
			{ "I2A5", 20, 21 },
			{ "I2A5", 21, 22 },
			{ "I2A5", 22, 23 },
			{ "I2A5", 23, 24 },
			{ "I2A7", 24, 25 },
			{ "I2A7", 25, 26 },
			{ "I2A3", 26, 27 },
			{ "I2A0", 27, 28 },
			{ "I2A0", 28, 29 },
			{ "I2A0", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A4", 50, 51 },
			{ "I2A3", 51, 52 },
			{ "I2A3", 52, 53 },
			{ "I2A5", 53, 54 },
			{ "I2A5", 54, 55 },
			{ "I2A5", 55, 56 },
			{ "I2A9", 56, 57 },
			{ "I2A4", 57, 58 },
			{ "I2A8", 58, 59 },
			{ "I2A6", 59, 60 },
			{ "I2A6", 60, 61 },
			{ "I2A8", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A8", 67, 68 },
			{ "I2A8", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
		{
			{ "I2A0", 0, 1 },
			{ "I2A0", 1, 2 },
			{ "I2A0", 2, 3 },
			{ "I2A0", 3, 4 },
			{ "I2A0", 4, 5 },
			{ "I2A0", 5, 6 },
			{ "I2A0", 6, 7 },
			{ "I2A0", 7, 8 },
			{ "I2A0", 8, 9 },
			{ "I2A0", 9, 10 },
			{ "I2A0", 10, 11 },
			{ "I2A0", 11, 12 },
			{ "I2A8", 12, 13 },
			{ "I2A9", 13, 14 },
			{ "I2A9", 14, 15 },
			{ "I2A9", 15, 16 },
			{ "I2A9", 16, 17 },
			{ "I2A9", 17, 18 },
			{ "I2A9", 18, 19 },
			{ "I2A5", 19, 20 },
			{ "I2A5", 20, 21 },
			{ "I2A6", 21, 22 },
			{ "I2A9", 22, 23 },
			{ "I2A9", 23, 24 },
			{ "I2A9", 24, 25 },
			{ "I2A9", 25, 26 },
			{ "I2A9", 26, 27 },
			{ "I2A7", 27, 28 },
			{ "I2A7", 28, 29 },
			{ "I2A3", 29, 30 },
			{ "I2A0", 30, 31 },
			{ "I2A0", 31, 32 },
			{ "I2A0", 32, 33 },
			{ "I2A0", 33, 34 },
			{ "I2A0", 34, 35 },
			{ "I2A0", 35, 36 },
			{ "I2A0", 36, 37 },
			{ "I2A0", 37, 38 },
			{ "I2A0", 38, 39 },
			{ "I2A0", 39, 40 },
			{ "I2A0", 40, 41 },
			{ "I2A0", 41, 42 },
			{ "I2A0", 42, 43 },
			{ "I2A0", 43, 44 },
			{ "I2A0", 44, 45 },
			{ "I2A0", 45, 46 },
			{ "I2A0", 46, 47 },
			{ "I2A0", 47, 48 },
			{ "I2A0", 48, 49 },
			{ "I2A0", 49, 50 },
			{ "I2A0", 50, 51 },
			{ "I2A0", 51, 52 },
			{ "I2A0", 52, 53 },
			{ "I2A0", 53, 54 },
			{ "I2A0", 54, 55 },
			{ "I2A0", 55, 56 },
			{ "I2A0", 56, 57 },
			{ "I2A0", 57, 58 },
			{ "I2A0", 58, 59 },
			{ "I2A0", 59, 60 },
			{ "I2A1", 60, 61 },
			{ "I2A8", 61, 62 },
			{ "I2A8", 62, 63 },
			{ "I2A8", 63, 64 },
			{ "I2A8", 64, 65 },
			{ "I2A8", 65, 66 },
			{ "I2A8", 66, 67 },
			{ "I2A6", 67, 68 },
			{ "I2A0", 68, 69 },
			{ "I2A0", 69, 70 },
			{ "I2A0", 70, 71 },
			{ "I2A0", 71, 72 },
			{ "I2A0", 72, 73 },
			{ "I2A0", 73, 74 },
		},
	}
	-- original ascii stored in ayat.txt
	dashboard.section.header.val = {
		[[                                                            @@@@@@@@@@@   ]],
		[[                                                            @@@@@@@@@@@@@ ]],
		[[                                                              @@@@@@@@@@@ ]],
		[[                                                              @@@@@@@@@@@ ]],
		[[                                                              @@@@@@@@@@  ]],
		[[                                                             @@@@@@@@@@@  ]],
		[[                                                            @@@@@@@@@@@@@ ]],
		[[                                                          @@@@@@@@@@@@@@@ ]],
		[[              @@@@@@@@@@@@                               @@@@@@@@@@@@@@@  ]],
		[[           @@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@     ]],
		[[          @@@@@@@@@@@@@@@@@@@@                             @@@@@@@@       ]],
		[[          @@@@@@@@@@@@@@@@@@@@                             @@@@@@@        ]],
		[[          @@@@@@@@@@@@@@@@@@@@@                           @@@@@@@@@       ]],
		[[          @@@@@@@@@@@@@@@@@@@@@                         @@@@@@@@@@@@      ]],
		[[          @@@@@@@@@@@@@@@@@@@@                        @@@@@@@@@@@@@@      ]],
		[[           @@@@@@@@@@@@@@@@@@                       @@@@@@@@@@@@@@@@@     ]],
		[[             @@@@@@@@@@@@@@                       @@@@@@@@@@@@@@@@@@@     ]],
		[[                  @@@@@@                        @@@@@@@@@@@@@@@@@@@@@     ]],
		[[              @@@@@@@@@@@@@                       @@@@@@@@@@@@@@@@@@@     ]],
		[[            @@@@@@@@@@@@@@@@@@                              @@@@@@@@      ]],
	}

	-- dashboard.section.header = header
	-- read the color part of img.txt
	--extractColor(img)

	dashboard.section.buttons.val = {
		dashboard.button("d", " " .. " Daily Note", ":Lazy load obsidian.nvim<CR>:ObsidianToday<CR>"),
		dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
		dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
		dashboard.button("c", " " .. " Config", ":e $HOME/.config/nvim/lua/plugins/init.lua<CR>"),
		dashboard.button("q", " " .. " Quit", ":qa<CR>"),
	}
	for _, button in ipairs(dashboard.section.buttons.val) do
		button.opts.hl = "AlphaButtons"
		button.opts.hl_shortcut = "AlphaShortcut"
	end
	dashboard.section.footer.opts.hl = "Type"
	dashboard.section.buttons.opts.hl = "AlphaButtons"
	dashboard.opts.layout[1].val = 8

	vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#f4b8e4" })

	-- close Lazy and re-open when the dashboard is ready
	if vim.o.filetype == "lazy" then
		vim.cmd.close()
		vim.api.nvim_create_autocmd("User", {
			pattern = "AlphaReady",
			callback = function()
				require("lazy").show()
			end,
		})
	end

	require("alpha").setup(dashboard.opts)

	-- show the cost time of plugins loading
	vim.api.nvim_create_autocmd("User", {
		pattern = "LazyVimStarted",
		callback = function()
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			dashboard.section.footer.val = "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
			pcall(vim.cmd.AlphaRedraw)
		end,
	})
end

return {
	-- dashboard of nvim
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		M.init()
	end,
}
