---- NORMAL + VISUAL MODE

-- disable arrow keys
map('', '<up>', '<nop')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- remote the stupid q: window
map('', 'q:', ':q')

---- NORMAL MODE

-- start commands with ;
map('n', ';', ':')

-- easier buffer switching
map('n', '<c-h>', '<c-w>h')
map('n', '<c-j>', '<c-w>j')
map('n', '<c-k>', '<c-w>k')
map('n', '<c-l>', '<c-w>l')

-- easier buffer resizing
map('n', '<', '3<c-w><')
map('n', '>', '3<c-w>>')
map('n', '+', '3<c-w>+')
map('n', '-', '3<c-w>-')

-- center search results
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- clear highlights easily
map('n', '<leader><space>', ':noh<cr>')

---- VISUAL MODE

-- make tab indent/undent (is that a word?)
map('v', '<tab>', '>gv')
map('v', '<s-tab>', '<gv')

---- INSERT MODE

-- disable arrow keys
map('i', '<up>', '<nop>')
map('i', '<down>', '<nop>')
map('i', '<left>', '<nop>')
map('i', '<right>', '<nop>')

---- PLUGINS
map('n', '<c-\\>', ':CommentToggle<cr>')
map('v', '<c-\\>', ':\'<,\'>CommentToggle<cr>')
map('', '<leader>n', ':NvimTreeToggle<cr>')
map('', '<leader>m', ':NvimTreeFindFile<cr>')
map('', '<c-p>', ':Telescope find_files<cr>')
