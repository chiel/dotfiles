local autocmd = vim.api.nvim_create_autocmd

-- two space tabs by default
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = false

-- use system clipboard
vim.o.clipboard = 'unnamed,unnamedplus'

-- disable mouse
vim.o.mouse = ''

-- no line wrap
vim.o.wrap = false

-- no swap files
vim.o.swapfile = false

-- split windows right and below
vim.o.splitright = true
vim.o.splitbelow = true

-- ignore case while searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- start scrolling before reaching edges
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5

-- always show the sign column to avoid jumping
vim.o.signcolumn = 'yes'

-- highlight current line only for active window
autocmd({ 'BufWinEnter', 'WinEnter' }, {
	pattern = '*',
	command = 'setlocal cursorline',
})
autocmd('WinLeave', {
	pattern = '*',
	command = 'setlocal nocursorline',
})

-- show invisibles
vim.o.list = true
vim.o.listchars = 'tab:│ ,trail:·,extends:❯,precedes:❮'

-- trim whitespace on save
vim.cmd([[
	au BufWritePre * :call StripWhitespace()
	function! StripWhitespace ()
		let save_cursor = getpos(".")
		let old_query = getreg('/')
		:%s/\s\+$//e
		call setpos('.', save_cursor)
		call setreg('/', old_query)
	endfunction
]])
