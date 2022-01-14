require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			'^.git/',
		},
		mappings = {
			i = {
				['<esc>'] = 'close',
				['<c-j>'] = 'move_selection_next',
				['<c-k>'] = 'move_selection_previous',
			},
		},
	},
	pickers = {
		find_files = {
			find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
			hidden = true,
		},
	},
}
