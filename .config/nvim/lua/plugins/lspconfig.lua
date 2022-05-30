local efmls = require 'efmls-configs'
local eslint_d = require 'efmls-configs.linters.eslint_d'
local eslint_d_fmt = require 'efmls-configs.formatters.eslint_d'

local function on_attach(client)
	print('Attached to ' .. client.name)
end

efmls.init {
	on_attach = on_attach,
	init_options = { documentFormatting = true },
}

efmls.setup {
	javascript = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
	javascriptreact = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
	typescript = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
	typescriptreact = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
}

vim.cmd [[au BufWritePre * lua vim.lsp.buf.formatting_sync()]]
