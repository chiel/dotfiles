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

" Easier to reach leader key
let mapleader=','

" Spell check language
set spelllang=en_gb

" Don't update display while executing macros
set lazyredraw

" Reload files when changed externally
set autoread

" Don't use modelines
set modelines=0

set wildignore+=*/tmp/*,*/.sass-cache/*,*/node_modules/*,*/.git/*,*.so,*.swp,*.zip

" }}}
" 2. Plugins -------------------------------------------------------------- {{{

" ctrlp
" let g:ctrlp_working_path_mode = 'ra'

" syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=2

let g:gofmt_command="goimports"

"json
let g:vim_json_syntax_conceal=0

" }}}
" 3. Interface ------------------------------------------------------------ {{{

" Update the title bar
set title

" Diffs
set diffopt=filler
set diffopt+=iwhite

" Folding
set foldmethod=indent
set foldlevelstart=99
set foldnestmax=3
set nofoldenable

" No sound effects
set noerrorbells
set visualbell

" }}}
" 4. Indentation ---------------------------------------------------------- {{{

" Auto indent stuff
set autoindent smartindent
set copyindent

" }}}
" 5. Keybinds ------------------------------------------------------------- {{{

" Duplicate line
noremap <leader>dd Yp
noremap <leader>du YP

" }}}
" 6. File types ----------------------------------------------------------- {{{

au BufRead,BufNewFile *.slab,*.mu,*.mustache set filetype=html

" Four space indents for python
au FileType python setl sw=4 sts=4 et

" }}}
" 7. Functions ------------------------------------------------------------ {{{

autocmd BufWritePre *.go Fmt

" }}}
