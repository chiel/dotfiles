local u = require('utils')

vim.diagnostic.config({
	float = { border = 'solid' },
	severity_sort = true,
	virtual_text = false,
})

u.nmap('<c-e>', vim.diagnostic.open_float)
