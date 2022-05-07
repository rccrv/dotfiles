-- Import lspconfig
local lspconfig = require 'lspconfig'

-- TODO: List of LSP servers should be machine defined
local lspinstaller = require 'nvim-lsp-installer'
lspinstaller.setup({})

-- Import aerial
local aerial = require 'aerial'
aerial.setup({})

-- Get a ClientCapabilities object that is passed to LSP servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- sumneko: Lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
lspconfig.sumneko_lua.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
  settings = {
    Lua = {
      runtime = {
        verison = 'LuaJIT',
        path = runtime_path,
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        useGitIgnore = true,
      },
      telemetry = {
        enable = false,
      }
    }
  }
})

-- pyright: Python
lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      },
      venvPath = ".venv"
    }
  }
})

-- vscode-language-server: JSON
lspconfig.jsonls.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- vscode-language-server: HTML
lspconfig.html.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- vscode-language-server: CSS
lspconfig.cssls.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- clangd: C, C++
lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- tsserver: Javascript and Typescript
lspconfig.tsserver.setup({
  on_attach = aerial.on_attach,
})

-- gopls: Golang
lspconfig.gopls.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- rust-analyzer: Rust
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- terrafromls: Terraform
lspconfig.terraformls.setup({
  filetypes = {'terraform', '.tf'},
  on_attach = aerial.on_attach,
})

-- julials: Julia
lspconfig.julials.setup({})

-- r_language_server: R
lspconfig.r_language_server.setup({})

-- elixirls: Elixir
lspconfig.elixirls.setup({})

-- jdtls: Java
lspconfig.jdtls.setup({})

-- lemminx: XML
lspconfig.lemminx.setup({})

-- texlab: LaTeX
lspconfig.texlab.setup({})

local lspkind = require 'lspkind'
lspkind.init({
  mode = 'symbol_text'
})

local luasnip = require 'luasnip'

local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
        luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
    keyword_length = 2
  },
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = lspkind.presets.default[vim_item.kind]  .. ' ' .. vim_item.kind
      vim_item.menu = ({
        buffer = '[Buffer]',
        nvim_lsp = '[LSP]',
      })[entry.source.name]
      return vim_item
    end
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }),
    ['<Up>'] = cmp.mapping.select_prev_item({
      behavior = cmp.SelectBehavior.Select
    }),
    ['<Down>'] = cmp.mapping.select_next_item({
      behavior = cmp.SelectBehavior.Select
    }),
    ['<Esc>'] = cmp.mapping.close(),
  },
  sources = {
    {name = 'nvim_lsp'}
  },
}

local autopairs_cmp = require 'nvim-autopairs.completion.cmp'
cmp.event:on( 'confirm_done', autopairs_cmp.on_confirm_done())

local lsp_signature = require 'lsp_signature'
lsp_signature.setup({
  bind = true,
})

local autopairs = require 'nvim-autopairs'
autopairs.setup()
