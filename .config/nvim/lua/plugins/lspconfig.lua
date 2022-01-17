local eslint = {
	lintCommand = 'eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}',
	lintIgnoreExitCode = true,
	lintSource = "eslint",
	lintStdin = true,
	lintFormats = {
		'%f(%l,%c): %tarning %m',
		'%f(%l,%c): %rror %m',
	},
}

local terraform = {
	formatCommand = 'terraform fmt -',
	formatStdin = true,
}

local on_attach = function(client)
	if client.resolved_capabilities.document_formatting then
		vim.cmd [[augroup Format]]
		vim.cmd [[autocmd! * <buffer>]]
		vim.cmd [[autocmd BufWritePost <buffer> lua require('lsp.formatting').format()]]
		vim.cmd [[augroup END]]
	end
end

require('lspconfig').efm.setup{
	on_attach = on_attach,
	filetypes = {
		'javascript',
		'javascriptreact',
		'terraform',
		'typescript',
		'typescriptreact',
	},
	settings = {
		rootMarkers = { '.git/' },
		languages = {
			javascript = { eslint },
			javascriptreact = { eslint },
			terraform = { terraform },
			typescript = { eslint },
			typescriptreact = { eslint },
		},
	},
}
