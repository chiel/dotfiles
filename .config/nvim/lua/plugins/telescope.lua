local u = require('utils')

u.nmap('<c-p>', ':Telescope find_files<cr>')
u.nmap('<c-f>', ':Telescope live_grep<cr>')
u.nmap('<c-g>', ':Telescope git_commits<cr>')

return {
	'nvim-telescope/telescope.nvim',
	requires = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
	cmd = { 'Telescope' },
	config = function()
		require('telescope').setup({
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
					find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix' },
					hidden = true,
				},
			},
		})
	end,
}
