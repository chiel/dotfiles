local efmls = require('efmls-configs')
local eslint_d = require('efmls-configs.linters.eslint_d')
local eslint_d_fmt = require('efmls-configs.formatters.eslint_d')
local stylua = require('efmls-configs.formatters.stylua')
local terraform_fmt = require('efmls-configs.formatters.terraform_fmt')

local function on_attach(client)
	print('Attached to ' .. client.name)
end

efmls.init({
	on_attach = on_attach,
	init_options = { documentFormatting = true },
})

efmls.setup({
	javascript = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
	javascriptreact = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
	lua = {
		formatter = stylua,
	},
	terraform = {
		formatter = terraform_fmt,
	},
	typescript = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
	typescriptreact = {
		linter = eslint_d,
		formatter = eslint_d_fmt,
	},
})

vim.cmd([[au BufWritePre * lua vim.lsp.buf.formatting_sync()]])

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup({
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end,
})
