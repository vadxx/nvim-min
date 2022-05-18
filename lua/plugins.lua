return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	-- Clipboard (it works in Tmux over SSH)
	use 'ojroques/vim-oscyank'
	
	-- Colors
	use 'sainnhe/everforest'

	-- Comment
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- Menu of keymaps
	use 'folke/which-key.nvim'

-- Indent line
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('indent_blankline').setup {
				char = "▏",
				show_first_indent_level = false,
			}
		end
	}

	-- Better syntax higlight
	use {
		'nvim-treesitter/nvim-treesitter',
		requires = 'nvim-lua/plenary.nvim',
		config = function()
			require('nvim-treesitter.configs').setup {
				ensure_installed = { 
					'bash', 'fish', 'lua', 
					'c', 'cpp', 'cmake', 'make', 
					'python', 'json' 
				},
				highlight = { enable = true },
				autotag = { enable = true },
				autopairs = { enable = true },
			}
		end
	}
	use 'mtdl9/vim-log-highlighting'

	-- File tree
	use 'kyazdani42/nvim-tree.lua'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {'nvim-lua/plenary.nvim'},
		config = function()
			require('telescope').setup {}
		end
	}

end)
