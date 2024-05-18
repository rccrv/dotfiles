local rainbow_delimiters = require 'rainbow-delimiters.setup'

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

-- Creates a non formated blankline
local ibl = require 'ibl'
ibl.setup({})

-- Transparent theme
local transparent = require 'transparent'
transparent.setup({
  extra_groups = {
    'NvimTreeNormal',
  }
})

rainbow_delimiters.setup({})

local gitsigns = require 'gitsigns'
gitsigns.setup({})
