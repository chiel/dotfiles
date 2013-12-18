au BufRead,BufNewFile * if !did_filetype() && getline(1) =~ '^#!.*\<node\>' | setf javascript | endif
