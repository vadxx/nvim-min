local g = vim.g
local o = vim.opt
local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd

-- General
o.clipboard = 'unnamedplus'
o.mouse = 'a'

-- Tabs / Indent
o.shiftwidth = 2
o.tabstop = 2

-- UI
o.termguicolors = true
cmd[[colorscheme everforest]]
o.laststatus = 3
o.list = true

-- Search
o.ignorecase = true
o.smartcase = true

-- Lang specific
g.python_recommended_style = 0

-- Auto commands
autocmd('TextYankPost', {
	pattern = '*',
	command = "if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankReg +' | endif"
})
