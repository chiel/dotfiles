require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'

	use 'tpope/vim-surround'
	use 'kyazdani42/nvim-web-devicons'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require('nvim-treesitter.configs').setup{
				ensure_installed = {
					'bash',
					'comment',
					'css',
					'dockerfile',
					'go',
					'gomod',
					'graphql',
					'hcl',
					'html',
					'http',
					'javascript',
					'jsdoc',
					'json',
					'json5',
					'lua',
					'make',
					'python',
					'regex',
					'ruby',
					'scss',
					'tsx',
					'typescript',
					'vim',
					'yaml',
				},

				highlight = {
					enable = true,
				},

				indent = {
					enable = true,
				},
			}
		end,
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		cmd = { 'Telescope' },
		config = function()
			require('telescope').setup{
				defaults = {
					file_ignore_patterns = {
						"^.git/",
					},
					mappings = {
						i = {
							['<esc>'] = 'close',
							['<c-j>'] = 'move_selection_next',
							['<c-k>'] = 'move_selection_previous',
						},
					},
				},
				pickers = {
					find_files = {
						find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
						hidden = true,
					},
				},
			}
		end,
	}

	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('gitsigns').setup{
				signs = {
					add = { text = '▐' },
					change = { text = '▐' },
				},
			}
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
			vim.g.nvim_tree_disable_window_picker = 1
			vim.g.nvim_tree_git_hl = 1
			vim.g.nvim_tree_show_icons = {
				files = 1,
				folder_arrows = 1,
				folders = 1,
				git = 0,
			}
			vim.g.nvim_tree_special_files = {}

			require('nvim-tree').setup{
				auto_close = true,
				view = {
					signcolumn = 'no',
				},
			}
		end,
	}
end)
