set nocompatible

" load pathogen + bundles
filetype on
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" syntax highlighting & filetype detection
syntax on
filetype plugin indent on

" this causes you to not be able to delete stuff otherwise, sometimes
set backspace=2

" bom character can cause errors sometimes
set encoding=utf-8 nobomb

" disable backups and swap files
set nobackup noswapfile nowritebackup

" split to right and bottom
set splitright splitbelow

" search stuff
set hlsearch
set incsearch
set ignorecase smartcase

" load local .vimrc files
set exrc

" start scrolling before reaching buffer edges
set scrolloff=5
set sidescrolloff=7
set sidescroll=1

" toggle paste mode in insert mode
set pastetoggle=<leader>p

" open quickfix window after grepping
au QuickFixCmdPost *grep* cwindow

" use ag to grep if available
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor\ --hidden\ --ignore-dir\ .git
endif

" trim trailing whitespace on save
autocmd BufWritePre * :call StripWhitespace()
function! StripWhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

" always jump to file's last known cursor position
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif
