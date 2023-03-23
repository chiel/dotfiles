return {
	'jose-elias-alvarez/null-ls.nvim',
	requires = { 'nvim-lua/plenary.nvim' },
	config = function()
		local null_ls = require('null-ls')
		local b = null_ls.builtins

		null_ls.setup({
			sources = {
				-- code actions
				b.code_actions.eslint_d,

				-- diagnostics
				b.diagnostics.eslint_d,

				-- formatting
				b.formatting.eslint_d,
			},
		})
	end,
}
