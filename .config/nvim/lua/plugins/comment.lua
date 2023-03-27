local u = require('utils')

u.nmap('<c-\\>', ':CommentToggle<cr>')
u.xmap('<c-\\>', ':\'<,\'>CommentToggle<cr>')

return {
	'terrortylor/nvim-comment',
	cmd = { 'CommentToggle' },
	config = function()
		require('nvim_comment').setup({
			comment_empty = false,
		})
	end,
}
