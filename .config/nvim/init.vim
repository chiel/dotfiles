" --- BEHAVIOUR ----------------------

" prepare for vundle
set nocompatible
filetype off

" load vundle + all plugins
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'chiel/vim-parabola'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'jparise/vim-graphql'
Plugin 'hashivim/vim-terraform'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'neomake/neomake'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'Raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tmhedberg/matchit'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'

call vundle#end()

" syntax highlighting & filetype detection
syntax on
filetype plugin indent on

" this causes you to not be able to delete stuff otherwise, sometimes
set backspace=2

" bom character can cause errors sometimes
set encoding=utf-8 nobomb

" disable backups and swap files
set nobackup noswapfile nowritebackup

" don't rename files on save
set backupcopy=yes

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

" disable mouse
set mouse=

" use system clipboard
set clipboard=unnamed

" load local .nvimrc files
set exrc

" open all folds on file open
set foldlevelstart=99

" enable syntax-based folding for js
au FileType javascript setlocal foldenable foldmethod=syntax

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

" show the signcolumn
set signcolumn=yes


" --- FORMATTING ---------------------

" set tab display as four spaces, don't expand
set shiftwidth=2
set tabstop=2
set noexpandtab
set smarttab

" don't wrap lines
set nowrap

" syntax highlight inside markdown files
let g:markdown_fenced_languages = [ 'html', 'js=javascript', 'bash=sh' ]

" ruby filetypes
au BufRead,BufNewFile *.god,*.ru,*.rake,capfile,Gemfile,Vagrantfile set filetype=ruby

"
au BufEnter *.tsx set filetype=typescript

" json filetypes
au BufRead,BufNewFile .babelrc,.eslintrc,.stylelintrc set filetype=json

" hard-wrap markdown files
au BufRead,BufNewFile *.md setl wrap linebreak showbreak=… sw=2 sts=2 et

" two space indents for package.json
au BufRead,BufNewFile package.json setl sw=2 sts=2 et

" two space indents for ruby
au FileType ruby setl sw=2 sts=2 et

" interpret css as scss
au FileType css set ft=scss


" --- PLUGINS ------------------------

" ctrlp
let g:ctrlp_show_hidden = 1

if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore-dir .git -g ""'
	let g:ctrlp_use_caching = 0
endif

" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_max_signs = 3000

" go
let g:go_fmt_command = 'goimports'

" jsx
let g:jsx_ext_required = 0

" multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<c-d>'
let g:multi_cursor_skip_key = '<c-x>'
let g:multi_cursor_quit_key = '<esc>'

" neomake
call neomake#configure#automake('w')
" let g:neomake_typescript_enabled_makers = ['eslint_d']
" let g:neomake_typescript_tsx_enabled_makers = ['eslint_d']

" nerdtree - increased width, show hidden files
let g:NERDTreeWinSize = 40
let g:NERDTreeShowHidden = 1

" terraform
let g:terraform_fmt_on_save = 1
let g:terraform_fold_sections = 1



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

" " easier tab switching
" noremap <m-1> 1gt
" noremap <m-2> 2gt
" noremap <m-3> 3gt
" noremap <m-4> 4gt
" noremap <m-5> 5gt
" noremap <m-6> 6gt
" noremap <m-7> 7gt
" noremap <m-8> 8gt
" noremap <m-9> 9gt
" noremap! <m-1> <esc>1gt
" noremap! <m-2> <esc>2gt
" noremap! <m-3> <esc>3gt
" noremap! <m-4> <esc>4gt
" noremap! <m-5> <esc>5gt
" noremap! <m-6> <esc>6gt
" noremap! <m-7> <esc>7gt
" noremap! <m-8> <esc>8gt
" noremap! <m-9> <esc>9gt

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

" fold with space in normal mode
nnoremap <space> za

" clear highlights easily
nnoremap <leader><space> :noh<cr>

" toggle nerd tree
nnoremap <leader>n :NERDTreeToggle<cr>

" find current file in nerdtree
nnoremap <leader>m :NERDTreeFind<cr>

" comment with tcomment
vmap <c-\> gc
nmap <c-\> gcc

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
