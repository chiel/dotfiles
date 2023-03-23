return {
	'terrortylor/nvim-comment',
	cmd = { 'CommentToggle' },
	config = function()
		require('nvim_comment').setup({
			comment_empty = false,
		})
	end,
}
