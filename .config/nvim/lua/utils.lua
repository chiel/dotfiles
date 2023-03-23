local get_map_options = function(custom_options)
	local options = { noremap = true, silent = true }
	if custom_options then
		options = vim.tbl_extend('force', options, custom_options)
	end
	return options
end

local M = {}

M.map = function(mode, target, source, opts)
	vim.keymap.set(mode, target, source, get_map_options(opts))
end

for _, mode in ipairs({ 'i', 'n', 'x' }) do
	M[mode .. 'map'] = function(...)
		M.map(mode, ...)
	end
end

return M
