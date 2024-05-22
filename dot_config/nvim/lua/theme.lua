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

-- Transparent theme
local transparent = require 'transparent'
transparent.setup({
  extra_groups = {
    'NvimTreeNormal',
  }
})

-- Creates a non formated blankline
local ibl = require 'ibl'
local hooks = require 'ibl.hooks'

local highlight = {
  'RainbowRed',
  'RainbowYellow',
  'RainbowBlue',
  'RainbowOrange',
  'RainbowGreen',
  'RainbowViolet',
  'RainbowCyan',
}

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, 'RainbowRed', { fg = '#E06C75' })
  vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = '#E5C07B' })
  vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = '#61AFEF' })
  vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = '#D19A66' })
  vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = '#98C379' })
  vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = '#C678DD' })
  vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = '#56B6C2' })
end)

ibl.setup { indent = { highlight = highlight } }

rainbow_delimiters.setup({})

local gitsigns = require 'gitsigns'
gitsigns.setup({})
