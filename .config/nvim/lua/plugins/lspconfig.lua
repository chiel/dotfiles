return {
	'neovim/nvim-lspconfig',
	config = function()
		require('lspconfig').tsserver.setup({})
	end,
}
