local M = {}

M.format = function()
	if not vim.b.saving_format then
		vim.b.init_changedtick = vim.b.changedtick
		vim.lsp.buf.formatting({})
	end
end

return M
