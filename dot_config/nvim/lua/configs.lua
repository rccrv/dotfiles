local fzf = require 'fzf-lua'
local nvimtree = require 'nvim-tree'
local null_ls = require 'null-ls'
local todo_comments = require 'todo-comments'
local mkdnflow = require 'mkdnflow'
local glow = require 'glow'

local mason_path = '/home/ricardo/.local/share/nvim/mason/bin/'

fzf.setup({
  files = {
    cmd = 'fd -t f'
  },
  grep = {
    cmd = 'rg --vimgrep'
  }
})

nvimtree.setup({})

null_ls.setup({
  sources = {
    -- Python
    null_ls.builtins.formatting.black.with({
      command = mason_path .. 'black'
    }),
    null_ls.builtins.formatting.isort.with({
      command = mason_path .. 'isort'
    }),
    null_ls.builtins.diagnostics.ruff.with({
      command = mason_path .. 'ruff'
    }),
    -- JavaScript/TypeScript
    null_ls.builtins.formatting.prettier.with({
      command = mason_path .. 'prettier'
    }),
    -- C/C++
    null_ls.builtins.formatting.clang_format,
    -- C#
    null_ls.builtins.formatting.csharpier,
    -- Golang
    null_ls.builtins.formatting.gofmt,
    -- Rust
    null_ls.builtins.formatting.rustfmt,
    -- R
    null_ls.builtins.formatting.format_r,
    -- Terraform
    null_ls.builtins.formatting.terraform_fmt,
    -- SQL
    null_ls.builtins.formatting.sqlfluff.with({
      command = mason_path .. 'sqlflush',
      extra_args = {"--dialect", "postgres"}
    }),
    -- JSON
    null_ls.builtins.formatting.jq.with({
      command = mason_path .. 'jq'
    }),
    -- YAML
    null_ls.builtins.formatting.yamlfmt.with({
      command = mason_path .. 'yamlfmt'
    }),
    -- Extra
    null_ls.builtins.formatting.trim_whitespace
  }
})

todo_comments.setup({
  signs = false
})

mkdnflow.setup({})

glow.setup({})
