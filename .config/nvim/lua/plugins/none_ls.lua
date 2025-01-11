return {
	'nvimtools/none-ls.nvim',
	requires = {
		'nvim-lua/plenary.nvim',
'nvimtools/none-ls-extras.nvim'
	},
	config = function()
		local none_ls = require('null-ls')
		local b = none_ls.builtins

		none_ls.setup({
			sources = {
				-- code actions
				require("none-ls.code_actions.eslint_d"),
				-- b.code_actions.eslint_d,

				-- diagnostics
				require("none-ls.diagnostics.eslint_d"),
				-- b.diagnostics.hadolint,

				-- formatting
				b.formatting.goimports,
				b.formatting.prettierd,
				b.formatting.stylua,
				b.formatting.terraform_fmt,
			},
		})
	end,
}
