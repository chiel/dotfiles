" disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap! <up> <nop>
noremap! <down> <nop>
noremap! <left> <nop>
noremap! <right> <nop>

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

" faster scrolling
noremap <c-e> 10<c-e>
noremap <c-y> 10<c-y>

" easier buffer resizing
noremap < 5<c-w><
noremap - 5<c-w>-
noremap + 5<c-w>+
noremap > 5<c-w>>

" auto-center search results
noremap n nzz
noremap N Nzz

" fold with space
nnoremap <space> za
vnoremap <space> zf

" quickly edit/reload .vimrc
nnoremap <leader>ev <c-w><c-v><c-l>:e $MYVIMRC<cr>

" make tab indent in visual mode, and shift tab undent
vnoremap <tab> >gv
vnoremap <s-tab> <gv

" easier commands
nnoremap ; :

" toggle nerd tree
nnoremap <leader>n :NERDTreeToggle<cr>

" find current file in nerdtree
nnoremap <leader>m :NERDTreeFind<cr>

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
