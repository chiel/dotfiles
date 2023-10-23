local u = require('utils')

u.nmap('<leader>n', ':NvimTreeToggle<cr>')
u.nmap('<leader>m', ':NvimTreeFindFile<cr>')

return {
	'nvim-tree/nvim-tree.lua',
	require = { 'nvim-tree/nvim-web-devicons' },
	cmd = { 'NvimTreeToggle', 'NvimTreeFindFile' },
	config = function()
		require('nvim-tree').setup({
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			git = {
				ignore = false,
			},
			renderer = {
				highlight_git = true,
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = false,
					},
				},
				special_files = {},
			},
			view = {
				signcolumn = 'no',
				width = 40,
			},
		})
	end,
}
