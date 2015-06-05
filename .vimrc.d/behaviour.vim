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

" load local .vimrc files
set exrc

" start scrolling before reaching buffer edges
set scrolloff=5
set sidescrolloff=7
set sidescroll=1

" toggle paste mode in insert mode
set pastetoggle=<leader>p

if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
endif
