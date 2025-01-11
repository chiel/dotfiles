return {
	'neovim/nvim-lspconfig',
	config = function()
		require('lspconfig').ts_ls.setup({})
	end,
}
