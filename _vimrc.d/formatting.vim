" set tab display as four spaces, don't expand
set shiftwidth=2
set tabstop=2
set noexpandtab
set smarttab

" don't wrap lines
set nowrap

" read css files as scss
au BufRead,BufNewFile *.css set filetype=scss

" ruby filetypes
au BufRead,BufNewFile *.god,*.ru,*.rake,capfile,Gemfile,Vagrantfile set filetype=ruby

" hard-wrap markdown files
au BufRead,BufNewFile *.md setl wrap tw=80 sw=2 sts=2 et

" two space indents for package.json
au BufRead,BufNewFile package.json setl sw=2 sts=2 et

" two space indents for ruby
au FileType ruby setl sw=2 sts=2 et
