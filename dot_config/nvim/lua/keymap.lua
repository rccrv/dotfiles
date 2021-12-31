-- Local variables
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- F1 doesn't open help
map('n', '<F1>', '<nop>', opts)
map('i', '<F1>', '<nop>', opts)

-- Open or close nvim-tree
map('n', '<F3>', ':NvimTreeToggle<cr>', opts)

-- Close all split except current one
map('n', '<F4>', ':only<cr>', opts)

-- Buffer navigation and moving
map('n', '<A-,>', ':BufferPrevious<cr>', opts)
map('n', '<A-.>', ':BufferNext<cr>', opts)
map('n', '<A-<>', ':BufferMovePrevious<cr>', opts)
map('n', '<A->>', ' :BufferMoveNext<cr>', opts)
map('n', '<A-c>', ':BufferClose<cr>', opts)

-- \l open the ledger file
map('n', '\\l', ':e ~/Git/ledger/Accounting/2022/current.ledger<cr>:chdir ~/Git/ledger/Accounting/2022<cr>', opts)

-- Map space as leader key
map('', '<Space>', '<nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
