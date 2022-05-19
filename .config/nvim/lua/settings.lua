-- default encoding
vim.o.encoding = 'utf-8'
vim.o.bomb = false

-- two space tabs by default
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = false

-- use system clipboard
vim.o.clipboard = 'unnamed,unnamedplus'

-- no line wrap
vim.o.wrap = false

-- no backup/swap files
vim.o.backup = false
vim.o.swapfile = false
vim.o.writebackup = false

-- split windows right and below
vim.o.splitright = true
vim.o.splitbelow = true

-- ignore case while searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- start scrolling before reaching edges
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5

-- disable folds entirely
vim.o.foldenable = true

-- always show the sign column to avoid jumping
vim.o.signcolumn = 'yes'

-- highlight current line only for active window
vim.cmd [[
	au BufWinEnter * setlocal cursorline
	au WinEnter * setlocal cursorline
	au WinLeave * setlocal nocursorline
]]

-- show invisibles
vim.o.list = true
vim.o.listchars = 'tab:│ ,trail:·,extends:❯,precedes:❮'

-- trim whitespace on save
vim.cmd [[
	au BufWritePre * :call StripWhitespace()
	function! StripWhitespace ()
		let save_cursor = getpos(".")
		let old_query = getreg('/')
		:%s/\s\+$//e
		call setpos('.', save_cursor)
		call setreg('/', old_query)
	endfunction
]]
