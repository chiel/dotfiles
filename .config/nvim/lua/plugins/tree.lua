
require('nvim-tree').setup{
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
	},
}
