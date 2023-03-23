local u = require('utils')

u.map('', '<leader>n', ':NvimTreeToggle<cr>')
u.map('', '<leader>m', ':NvimTreeFindFile<cr>')

return {
	'kyazdani42/nvim-tree.lua',
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
