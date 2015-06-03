" 256 color mode
set t_Co=256

" colorscheme
colo parabola

" highlight current line only for active window
autocmd BufWinEnter * setlocal cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" always show status line
set laststatus=2

" format the statusline
set statusline=%{HasPaste()}%f\ \ \ \ %{SyntasticStatuslineFlag()}\ \ %m%r%h\ \ \ \ \ Col:\ %c\ \ \ Row:\ %l/%L\ -\ %p%%

function! HasPaste()
	if &paste
		return 'PASTE '
	else
		return ''
	endif
endfunction
