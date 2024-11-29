vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<F5>", ":w<cr>:!python3 %<CR>", { noremap = true, silent = true })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "java",
	callback = function()
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F5>",
			":w<cr>:!cd %:p:h && javac %:t && java %:t:r<cr>",
			{ noremap = true, silent = true }
		)
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function()
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F5>",
			":w<cr>:!cd %:p:h && gcc %:t -o %:t:r && ./%:t:r<cr>",
			{ noremap = true, silent = true }
		)
	end,
})
-- Pane and window Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true }) -- Navigate Left
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true }) -- Navigate Down
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true }) -- Navigate Up
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true }) -- Navigate Right

--making new tabs
-- -- New tab
-- vim.keymap.set("n", "<leaer>t", ":tabedit", { noremap = true, silent = false })
-- vim.keymap.set("n", "<tab>", ":tabnext<Return>", {})
-- vim.keymap.set("n", "<s-tab>", ":tabprev<Return>", {})

-- Window Management
vim.keymap.set("n", "<leader>ss", ":vsplit<CR>", { noremap = true, silent = true }) -- Split Vertically
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true }) -- Split Horizontally
--resizing keymaps
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true }) -- Increase height
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true }) -- Decrease height
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", { noremap = true, silent = true }) -- Increase width
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", { noremap = true, silent = true }) -- Decrease width

-- Show Full File Path
vim.keymap.set("n", "<leader>pa", ":echo expand('%:p')<CR>", { noremap = true, silent = true }) -- Show Full File Path

-- Indenting in Visual Mode
vim.keymap.set("v", "<Tab>", ">gv", { silent = true, noremap = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { silent = true, noremap = true })

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- move selected lines up and down
vim.api.nvim_set_keymap("v", "<C-k>", ":move '<-2<cr>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-j>", ":move '>+1<cr>gv=gv", { noremap = true })

--Primeagen keymaps
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzz", { noremap = true, silent = false })
vim.keymap.set("n", "N", "Nzzzz", { noremap = true, silent = false })

vim.keymap.set("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })

--Quiting the currentBuffer
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })

--NVIM grep keymaps
vim.keymap.set("n", "<leader>fg", ":copen | :silent :grep ")
vim.keymap.set("n", "]q", ":cnext<CR>")
vim.keymap.set("n", "[q", ":cprev<CR>")

--mapping for git workflow
-- vim.api.nvim_set_keymap("n", "<leader>q", ":DiffviewClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gd", ":Gdiffsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", ":DiffviewOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dh", ":DiffviewFileHistory<CR>", { noremap = true, silent = true })
