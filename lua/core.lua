local g = vim.g
local o = vim.opt
local c = vim.cmd

-- General
o.clipboard = 'unnamedplus'

-- Tabs / Indent
o.shiftwidth = 2
o.tabstop = 2

-- UI
o.termguicolors = true
o.laststatus = 3
c[[colorscheme evernight]]

-- Search
o.ignorecase = true
o.smartcase = true

-- Lang specific
g.python_recommended_style = 0
