map('', '<c-p>', ':Telescope find_files<cr>')

require('telescope').setup{
	defaults = {
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
			hidden = true,
		},
	},
}
