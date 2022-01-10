require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'

	use 'kyazdani42/nvim-web-devicons'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}

	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
	}

	use {
		'fatih/vim-go',
		ft = 'go',
		run = ':GoUpdateBinaries',
	}

	use {
		'kyazdani42/nvim-tree.lua',
		cmd = { 'NvimTreeFindFile', 'NvimTreeToggle' },
		opt = true,
	}
end)
