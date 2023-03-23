return {
	'lewis6991/gitsigns.nvim',
	requires = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('gitsigns').setup({
			signs = {
				add = { text = '▐' },
				change = { text = '▐' },
				untracked = { text = '▕' },
			},
		})
	end,
}
