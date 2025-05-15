local fzf = require 'fzf-lua'
fzf.setup({
  files = {
    cmd = 'fd -t f'
  },
  grep = {
    cmd = 'rg --vimgrep'
  }
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local nvimtree = require 'nvim-tree'
nvimtree.setup({})

local nvim_lint = require 'lint'
nvim_lint.linters_by_ft = {
  c = {'clangtidy'},
  cpp = {'clangtidy', 'cppcheck'},
  go = {'revive'},
  javascript = {'eslint'},
  python = {'mypy', 'ruff'},
  typecript = {'eslint'},
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

local formatter = require 'formatter'
local formatter_filetypes = require 'formatter.filetypes'
formatter.setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    c = {
      formatter_filetypes.c.clangformat
    },
    cpp = {
      formatter_filetypes.cpp.clangformat
    },
    go = {
      formatter_filetypes.go.gofmt,
      formatter_filetypes.go.goimports
    },
    javascript = {
      formatter_filetypes.javascript.prettier,
    },
    json = {
      formatter_filetypes.json.jq
    },
    python = {
      formatter_filetypes.python.black,
      formatter_filetypes.python.isort
    },
    rust = {
      formatter_filetypes.rust.rustfmt
    },
    terraform = {
      formatter_filetypes.terraform.terraformfmt
    },
    typescript = {
      formatter_filetypes.typescript.prettier
    },
    yaml = {
      formatter_filetypes.yaml.yamlfmt
    },
    ["*"] = {
      formatter_filetypes.any.remove_trailing_whitespace
    }
  }
})

local todo_comments = require 'todo-comments'
todo_comments.setup({
  signs = false
})

local mkdnflow = require 'mkdnflow'
mkdnflow.setup({})

local glow = require 'glow'
glow.setup({})
