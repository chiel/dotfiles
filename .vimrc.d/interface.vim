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

" search stuff
set hlsearch
set incsearch
set ignorecase smartcase

" show invisibles
set list
set listchars=tab:\|\ ,trail:·,extends:❯,precedes:❮
