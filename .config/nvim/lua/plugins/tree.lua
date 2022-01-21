vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {
	files = 1,
	folder_arrows = 1,
	folders = 1,
	git = 0,
}
vim.g.nvim_tree_special_files = {}

require('nvim-tree').setup{
	auto_close = true,
	view = {
		signcolumn = 'no',
	},
}
