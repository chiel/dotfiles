require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'

	use 'tpope/vim-surround'
	use 'kyazdani42/nvim-web-devicons'

	vim.g.delimitMate_expand_cr = 1
	vim.g.delimitMate_expand_space = 1
	use 'Raimondi/delimitMate'

	vim.g.VM_maps = {
		['Find Under'] = '<c-d>',
		['Find Subword Under'] = '<c-d>',
	}
	use 'mg979/vim-visual-multi'

	use {
		'terrortylor/nvim-comment',
		cmd = { 'CommentToggle' },
		config = function()
			require('plugins/comment')
		end,
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('plugins/treesitter')
		end,
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		cmd = { 'Telescope' },
		config = function()
			require('plugins/telescope')
		end,
	}

	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('plugins/gitsigns')
		end,
	}

	use {
		'fatih/vim-go',
		ft = 'go',
		run = ':GoUpdateBinaries',
	}

	use {
		'kyazdani42/nvim-tree.lua',
		cmd = { 'NvimTreeToggle', 'NvimTreeFindFile' },
		config = function()
			require('plugins/tree')
		end,
	}

	use {
		'neovim/nvim-lspconfig',
		config = function()
			require('plugins/lspconfig')
		end,
	}
end)
