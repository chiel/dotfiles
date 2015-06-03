" 256 color mode
set t_Co=256

" Colorscheme
colo parabola

" Highlight current line only for active window
autocmd BufWinEnter * setlocal cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Always show status line
set laststatus=2
