" --- BEHAVIOUR ----------------------
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

" start scrolling before reaching buffer edges
set scrolloff=5
set sidescrolloff=7
set sidescroll=1

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



" --- INTERFACE ----------------------

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

" show invisibles
set list
set listchars=tab:\|\ ,trail:·,extends:❯,precedes:❮



" --- FORMATTING ---------------------

" set tab display as four spaces, don't expand
set shiftwidth=2
set tabstop=2
set noexpandtab
set smarttab

" don't wrap lines
set nowrap

" ruby filetypes
au BufRead,BufNewFile *.god,*.ru,*.rake,capfile,Gemfile,Vagrantfile set filetype=ruby

" hard-wrap markdown files
au BufRead,BufNewFile *.md setl wrap tw=80 sw=2 sts=2 et

" two space indents for package.json
au BufRead,BufNewFile package.json setl sw=2 sts=2 et

" two space indents for ruby
au FileType ruby setl sw=2 sts=2 et



" --- KEYBINDINGS --------------------

"easier to reach leader key
let mapleader = ','

" toggle paste mode in insert mode
set pastetoggle=<leader>p

" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" easier buffer switching (escape first in insert mode)
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap! <c-h> <esc><c-w>h
noremap! <c-j> <esc><c-w>j
noremap! <c-k> <esc><c-w>k
noremap! <c-l> <esc><c-w>l

" easier tab switching
noremap <esc>1 1gt
noremap <esc>2 2gt
noremap <esc>3 3gt
noremap <esc>4 4gt
noremap <esc>5 5gt
noremap <esc>6 6gt
noremap <esc>7 7gt
noremap <esc>8 8gt
noremap <esc>9 9gt
noremap! <esc>1 <esc>1gt
noremap! <esc>2 <esc>2gt
noremap! <esc>3 <esc>3gt
noremap! <esc>4 <esc>4gt
noremap! <esc>5 <esc>5gt
noremap! <esc>6 <esc>6gt
noremap! <esc>7 <esc>7gt
noremap! <esc>8 <esc>8gt
noremap! <esc>9 <esc>9gt

" easier buffer resizing
noremap < 5<c-w><
noremap - 5<c-w>-
noremap + 5<c-w>+
noremap > 5<c-w>>

" auto-center search results
noremap n nzz
noremap N Nzz

" make tab indent in visual mode, and shift tab undent
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" easier commands
nnoremap ; :

" map tab to %
nmap <tab> %

" clear highlights easily
nnoremap <leader><space> :noh<cr>

" show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nnoremap <leader>sh :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" tab completion
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
