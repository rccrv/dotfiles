local fzf = require 'fzf-lua'
fzf.setup({
  files = {
    cmd = 'fd -t f'
  },
  grep = {
    cmd = 'rg --vimgrep'
  }
})

local nvimtree = require 'nvim-tree'
nvimtree.setup({})

local null_ls = require 'null-ls'
null_ls.setup({
  sources = {
    -- Python
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    -- JavaScript/TypeScript
    null_ls.builtins.formatting.prettier,
    -- C/C++
    null_ls.builtins.formatting.clang_format,
    -- Golang
    null_ls.builtins.formatting.gofmt,
    -- Rust
    null_ls.builtins.formatting.rustfmt,
    -- Elixir
    null_ls.builtins.formatting.mix,
    -- R
    null_ls.builtins.formatting.format_r,
    -- Terraform
    null_ls.builtins.formatting.terraform_fmt,
    -- SQL
    null_ls.builtins.formatting.sqlfluff.with({
      extra_args = {"--dialect", "postgres"}
    }),
    -- JSON
    null_ls.builtins.formatting.jq,
    -- Extra
    null_ls.builtins.formatting.trim_whitespace
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
