return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	
	-- Colors
	use 'azolus/evernight.nvim'
	-- use 'projekt0n/github-nvim-theme'

	-- Menu of keymaps
	use {
		'folke/which-key.nvim',
		config = function()
			require("which-key").setup()
		end
	}
end)
