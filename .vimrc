" ===================================
" Over time, I've found a lot of different things from a lot of
" different sources, picking and choosing what I needed.
"
" I've tried to divide things up into sections as much as possible
" I may have failed at some point though. These are the sections:
" -----------------------------------
" 1. Behaviour
" 2. Plugins
" 3. Interface
" 4. Indentation
" 5. Keybinds
" 6. Functions
" 7. File types
" ===================================

" 1. Behaviour ------------------------------------------------------------ {{{

set nocompatible

" Load pathogen + bundles
filetype on
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Syntax highlighting & filetype detection
syntax on
filetype plugin indent on

" Easier to reach leader key
let mapleader=','

" This causes you to not be able to delete stuff otherwise, sometimes
set backspace=2

" Spell check language
set spelllang=en_gb

" BOM can cause some errors sometimes
set encoding=utf-8 nobomb

" Don't update display while executing macros
set lazyredraw

" Reload files when changed externally
set autoread

" Don't use modelines
set modelines=0

" Turn off backups and swap files
set nobackup noswapfile nowb

" Always open new windows on the right/bottom
set splitright splitbelow

set wildignore+=*/tmp/*,*/.sass-cache/*,*/node_modules/*,*/.git/*,*.so,*.swp,*.zip

" }}}
" 2. Plugins -------------------------------------------------------------- {{{

" ctrlp
let g:ctrlp_working_path_mode = 'c'

" delimitMate
let delimitMate_expand_cr=1

" syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=2
let g:syntastic_enable_signs=0
let g:syntastic_enable_highlighting=0
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript', 'json', 'ruby'], 'passive_filetypes': [] }

" }}}
" 3. Interface ------------------------------------------------------------ {{{

" 256 color mode
set t_Co=256

" Colorscheme
colo parabola

" No line numbers
set nonumber

" Highlight current line only for active window
autocmd BufWinEnter * setlocal cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Always show status line
set laststatus=2

" Update the title bar
set title

" Start scrolling before reaching buffer edges
set scrolloff=5
set sidescrolloff=7
set sidescroll=1

" Search stuff
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
set hlsearch
set incsearch
set ignorecase smartcase

" Diffs
set diffopt=filler
set diffopt+=iwhite

" Folding
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=3
set nofoldenable

" Show tab characters & when a line is too long
set list
set listchars=tab:\|\ ,trail:·,extends:❯,precedes:❮


" No sound effects
set noerrorbells
set visualbell

" Toggle paste mode in insert mode
set pastetoggle=<leader>p

" Format the statusline
set statusline=%{HasPaste()}%f\ %m%r%h\ \ \ \ \ Col:\ %c\ \ \ Row:\ %l/%L\ -\ %p%%

function! HasPaste()
	if &paste
		return 'PASTE '
	else
		return ''
	endif
endfunction

" }}}
" 4. Indentation ---------------------------------------------------------- {{{

" Set tab display as four spaces, don't expand
set shiftwidth=2
set tabstop=2
set noexpandtab
set smarttab

" Auto indent stuff
set autoindent smartindent
set copyindent

" Don't wrap lines
set nowrap

" }}}
" 5. Keybinds ------------------------------------------------------------- {{{

" Disable dem arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Easier buffer switching
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-l> <C-W>l

" Easier tab switching
nmap <esc>1 1gt
nmap <esc>2 2gt
nmap <esc>3 3gt
nmap <esc>4 4gt
nmap <esc>5 5gt
nmap <esc>6 6gt
nmap <esc>7 7gt
nmap <esc>8 8gt
nmap <esc>9 9gt

" Faster scrolling
nnoremap <C-e> 10<C-e>
nnoremap <C-y> 10<C-y>

" Duplicate line
noremap <leader>dd Yp
noremap <leader>du YP

" Easier buffer resizing
nmap < 5<C-w><
nmap - 5<C-w>-
nmap + 5<C-w>+
nmap > 5<C-w>>

" Auto-center search results
nmap n nzz
nmap N Nzz

" Fold with space
nnoremap <space> za
vnoremap <space> zf

" Quickly edit/reload the vimrc file
nnoremap <leader>ev <c-w><c-v><c-l>:e $MYVIMRC<cr>

" Make tab indent in visual mode, and shift tab undent
vmap <tab> >gv
vmap <s-tab> <gv

" Easier commands
nnoremap ; :

" Escape mode
inoremap jj <ESC>

" Tab completion
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" }}}
" 6. File types ----------------------------------------------------------- {{{

au BufRead,BufNewFile *.slab,*.mu,*.mustache set filetype=html

au BufRead,BufNewFile *.scss set filetype=scss

" Read .ru and capfiles as ruby
au BufRead,BufNewFile *.ru set filetype=ruby
au BufRead,BufNewFile capfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby

" hard-wrap markdown files
au BufRead,BufNewFile *.md set wrap tw=80 sw=2 sts=2 et

" Two space indents for ruby
au FileType ruby setl sw=2 sts=2 et

" Four space indents for python
au FileType python setl sw=4 sts=4 et

" }}}
" 7. Functions ------------------------------------------------------------ {{{

" Trim whitespace off line-endings on save
autocmd BufWritePre * :call StripWhitespace()
function! StripWhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction

" Show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nnoremap <leader>sh :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif

" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" }}}

