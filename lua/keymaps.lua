local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Horisontal and vertical split window
map('n', ':h', ':split<cr>')
map('n', ':v', ':vsplit<cr>')

-- Tab bar navigation
map('n', ':t', ':tabnew<cr>')
map('n', '<S-Tab>', ':tabprev<cr>')
map('n', '<Tab>', ':tabnext<cr>')

--map('n', ':.', ':set list!<cr>')


-- Related to plugins
-- Default leader is '\'
local isOk, wk = pcall(require, 'which-key')
if not isOk then
	return
end

wk.register({
	-- Telescope
	f = {
		name = "File", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
		w = { "<cmd>Telescope live_grep<cr>", "Search in current dir"},
	},
	t = {
		name = "Theme",
		b = { ":let &background = ( &background == \"dark\"? \"light\" : \"dark\" )<cr>", "Toggle light/dark background" },
	},
}, { prefix = "<leader>" })

wk.register({
	name = "Convert spaces to tabs",
	["2"] = { ":%s#\\s\\s#\\t#g<cr>:noh<cr>", "Conv 2 spaces to tab in file"},
	["4"] = { ":%s#\\s\\s\\s\\s#\\t#g<cr>:noh<cr>", "Conv 4 spaces to tab in file"},
}, { prefix = "<leader>=" })


