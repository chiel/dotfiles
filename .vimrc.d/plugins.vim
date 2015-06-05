" airline
let g:airline_theme = 'bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_mode_map = {
	\ '__' : '-',
	\ 'n'  : 'N',
	\ 'i'  : 'I',
	\ 'R'  : 'R',
	\ 'c'  : 'C',
	\ 'v'  : 'V',
	\ 'V'  : 'V',
	\ '' : 'V',
	\ 's'  : 'S',
	\ 'S'  : 'S',
	\ '' : 'S',
\ }

" ctrlp
let g:ctrlp_show_hidden = 1

if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --ignore-dir .git -g ""'
	let g:ctrlp_use_caching = 0
endif

" multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<c-d>'
let g:multi_cursor_quit_key = '<esc>'

" nerdtree - increased width, show hidden files
let g:NERDTreeWinSize = 60
let g:NERDTreeShowHidden = 1

" syntastic
let g:syntastic_enable_signs = 0
let g:syntastic_check_on_open = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_javascript_checkers = [ 'jscs' ]
let g:syntastic_mode_map = {
	\ 'mode': 'passive',
	\ 'active_filetypes': [ 'javascript', 'json', 'ruby' ],
	\ 'passive_filetypes': []
\ }
