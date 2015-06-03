" ctrlp
let g:ctrlp_show_hidden = 1

" nerdtree - increased width, show hidden files
let g:NERDTreeWinSize = 60
let g:NERDTreeShowHidden = 1

" syntastic
let g:syntastic_enable_signs = 0
let g:syntastic_check_on_open = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_javascript_checkers = [ 'jscs' ]
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [ 'javascript', 'json', 'ruby' ], 'passive_filetypes': [] }
