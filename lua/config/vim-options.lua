local opt = vim.opt

-- for Searching ditching telescope
opt.path:append("**/.*")
opt.wildignore:append("*.class*,!.*/")
--grep configureation
vim.opt.grepprg = "rg --vimgrep $* ."
vim.opt.grepformat = "%f:%l:%c:%m"


-- Tab / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.smartcase = true
-- opt.hlsearch = true

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.completeopt = "menuone,noinsert,noselect"

-- Behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.selection = "exclusive"
opt.mouse = "a"
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.guicursor = ""
opt.encoding = "UTF-8"
opt.showmode = true

-- folds
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99

vim.opt.statusline = "%t %m %= %l,%c "

vim.cmd("syntax on")
