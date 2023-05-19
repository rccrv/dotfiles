local cybu = require 'cybu'
cybu.setup({
  display_time = 350,
})

local trouble = require 'trouble'
trouble.setup({})

vim.wo.signcolumn = 'yes:1'
vim.wo.number = true
vim.opt.showtabline = 0
