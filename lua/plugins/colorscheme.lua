return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	lazy = false, -- Load the plugin eagerly
	-- 	priority = 1000, -- High priority to load the theme before others
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha",
	-- 			transparent_background = true, -- disables setting the background color.
	-- 		})
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 		-- Now set the line number colors
	-- 		vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff", bg = "NONE" }) -- Normal line number color (white on dark gray)
	-- 		vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bg = "NONE", bold = false }) -- Current line number color (white on a darker background)
	--
	-- 	end,
	-- },

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "main", -- auto, main, moon, or dawn
				dark_variant = "dawn", -- main, moon, or dawn
				-- Enable transparency by excluding the background color
				disable_background = true,
				disable_float_background = true,
			})
			vim.cmd("colorscheme rose-pine")

			-- Set LineNr (line numbers) to light pink
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFB6C1", bg = "NONE" }) -- Line numbers (light pink)
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FF69B4", bg = "NONE", bold = true }) -- Cursor line number (hot pink)

			-- Set NonText (e.g., `~` symbols) to light pink
			vim.api.nvim_set_hl(0, "NonText", { fg = "#FFB6C1", bg = "NONE" })

			vim.api.nvim_set_hl(0, "StatusLine", { fg = "#FFB6C1", bg = "NONE", bold = true }) -- Active status line
			vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#FFB6C1", bg = "NONE" }) -- Inactive status line
			vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#FFB6C1", bg = "NONE", bold = true }) -- Mode message (like "-- INSERT --")
		end,
	},
}
