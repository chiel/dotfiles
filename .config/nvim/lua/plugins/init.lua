require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}
end)
