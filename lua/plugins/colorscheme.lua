return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = ...,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				contrast = "hard", -- can be "hard", "soft" or empty string
				transparent_mode = true,
			})
			vim.o.background = "dark" -- or "light" for light mode
			vim.cmd([[colorscheme gruvbox]])
		end,
	},
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			variant = "main", -- auto, main, moon, or dawn
	-- 			dark_variant = "dawn", -- main, moon, or dawn
	-- 			-- Enable transparency by excluding the background color
	-- 			disable_background = true,
	-- 			disable_float_background = true,
	-- 		})
	-- 		vim.cmd("colorscheme rose-pine")

	-- 		-- Set LineNr (line numbers) to light pink
	-- 		-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFB6C1", bg = "NONE" }) -- Line numbers (light pink)
	-- 		-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF69B4", bg = "NONE", bold = true }) -- Cursor line number (hot pink)

	-- 		-- Set NonText (e.g., `~` symbols) to light pink
	-- 		-- vim.api.nvim_set_hl(0, "NonText", { fg = "#FFB6C1", bg = "NONE" })

	-- 		vim.api.nvim_set_hl(0, "StatusLine", { fg = "#FFB6C1", bg = "NONE", bold = true }) -- Active status line
	-- 		vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#FFB6C1", bg = "NONE" }) -- Inactive status line
	-- 		vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#FFB6C1", bg = "NONE", bold = true }) -- Mode message (like "-- INSERT --")
	-- 	end,
	-- },
}
