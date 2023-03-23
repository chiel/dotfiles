local u = require('utils')

-- set comma as leader
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- remove the stupid q: window
u.map('', 'q:', ':q')

-- easier buffer switching
u.nmap('<c-h>', '<c-w>h')
u.nmap('<c-j>', '<c-w>j')
u.nmap('<c-k>', '<c-w>k')
u.nmap('<c-l>', '<c-w>l')

-- easier buffer resizing
u.nmap('<', '3<c-w><')
u.nmap('>', '3<c-w>>')
u.nmap('+', '3<c-w>+')
u.nmap('-', '3<c-w>-')

-- center search results
u.nmap('n', 'nzz')
u.nmap('N', 'Nzz')

-- clear highlights easily
u.nmap('<leader><space>', ':noh<cr>')

-- make tab indent/undent (is that a word?)
u.xmap('<tab>', '>gv')
u.xmap('<s-tab>', '<gv')
