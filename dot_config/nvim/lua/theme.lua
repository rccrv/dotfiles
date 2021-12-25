-- Use the nightfly colorscheme
vim.cmd [[colorscheme nightfly]]
-- Transparent background
vim.cmd [[highlight Normal guibg=none]]
-- Transparent status line background
vim.cmd [[highlight StatusLine guibg=none]]
-- Transparent buffer line fill background
vim.cmd [[highlight BufferTabpageFill guibg=none]]
-- Whitespaces from listchar are have a red background
vim.cmd [[highlight Whitespace guifg=red]]
vim.cmd [[highlight IndentBlanklineIndent guifg=#737373 blend=nocombine]]

-- Creates a non formated blankline
require('indent_blankline').setup {
    space_char_blankline = ' ',
    char_highlight_list = {'IndentBlanklineIndent'},
}
