local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2 -- This is tab space in insert mode
opt.expandtab = true
opt.smartindent = true
opt.wrap = false -- Code wrap toggle here

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = '100'
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behaviour
opt.hidden = true
opt.errorbells = false
opt.swapfile = true
opt.backup = true
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-") -- This makes it so that when - is in between a word, it is treated as a single word
opt.mouse:append('a')
opt.clipboard:append("unnamedplus") -- This makes copy pasting from vim to outside work
opt.modifiable = true
opt.encoding = "UTF-8"
