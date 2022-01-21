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

require('lspconfig').efm.setup{
	filetypes = {
		'javascript',
		'javascriptreact',
		'typescript',
		'typescriptreact',
	},
	settings = {
		rootMarkers = { '.git/' },
		languages = {
			javascript = { eslint },
			javascriptreact = { eslint },
			typescript = { eslint },
			typescriptreact = { eslint },
		},
	},
}
