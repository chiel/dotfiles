return {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup({
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
				'terraform',
				'tsx',
				'typescript',
				'vim',
				'yaml',
			},

			sync_install = true,

			highlight = {
				enable = true,
			},

			indent = {
				enable = true,
			},
		})
	end,
}
