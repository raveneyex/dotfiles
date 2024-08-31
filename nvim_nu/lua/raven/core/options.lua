vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- show line numbers relative to cursor location
opt.relativenumber = true
-- show absolute line numbers
opt.number = true
-- tabs & indentation
opt.tabstop = 2 -- tab witdh
opt.shiftwidth = 2 -- 2 spaces for indentation
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line to next
-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- switches back to case sensitive search if mixed case is used in search params
-- highlight cursor line  
opt.cursorline = true
-- turn on termguicolors
opt.termguicolors = true
-- allow dark background
opt.background = "dark"
-- show sign column
opt.signcolumn = "yes"
-- better backspace
opt.backspace = "indent,eol,start"
-- use system clipboard
opt.clipboard:append("unnamedplus")
-- slip windows
opt.splitright = true -- split vertical to the right
opt.splitbelow = true -- split below
