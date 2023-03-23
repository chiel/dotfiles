local u = require('utils')

local disabled_formatters = {
	tsserver = true,
}

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)

		if client.supports_method('textDocument/hover') then
			u.nmap('K', vim.lsp.buf.hover, { buffer = bufnr })
		end

		if client.supports_method('textDocument/codeAction') then
			u.nmap('<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
		end

		if client.supports_method('textDocument/declaration') then
			u.nmap('gD', vim.lsp.buf.declaration, { buffer = bufnr })
		end

		if client.supports_method('textDocument/definition') then
			u.nmap('gd', function()
				vim.cmd.vs()
				vim.lsp.buf.definition()
			end, { buffer = bufnr })
		end

		if client.supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							return disabled_formatters[client.name] ~= true
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
