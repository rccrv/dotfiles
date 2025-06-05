-- Import lspconfig
local lspconfig = require 'lspconfig'

local mason = require 'mason'
mason.setup({})

-- Import aerial
local aerial = require 'aerial'
aerial.setup({})

-- Get a ClientCapabilities object that is passed to LSP servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local function custom_attach(client, buffnr)
  client.server_capabilities.documentFormattingProvider = false
end

-- sumneko: Lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
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
        library = vim.api.nvim_get_runtime_file('', true),
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
  on_attach = custom_attach,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = 'workspace',
        useLibraryCodeForTypes = true
      },
      venvPath = '.venv'
    }
  }
})

-- csharp-language-server: C#
lspconfig.csharp_ls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- vscode-language-server: JSON
lspconfig.jsonls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- vscode-language-server: HTML
lspconfig.html.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- vscode-language-server: CSS
lspconfig.cssls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- clangd: C, C++
lspconfig.clangd.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
  -- Prevents an annoying warning
  cmd = {
    'clangd',
    '--offset-encoding=utf-16'
  }
})

-- ts_ls: Javascript and Typescript
lspconfig.ts_ls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- gopls: Golang
lspconfig.gopls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- rust-analyzer: Rust
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = aerial.on_attach,
})

-- terrafromls: Terraform
lspconfig.terraformls.setup({
  filetypes = {'terraform', '.tf'},
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- julials: Julia
lspconfig.julials.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- dartls: Dart
lspconfig.dartls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- r_language_server: R
lspconfig.r_language_server.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- jdtls: Java
lspconfig.jdtls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- lemminx: XML
lspconfig.lemminx.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- texlab: LaTeX
lspconfig.texlab.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- ocamllsp: OCaml
lspconfig.ocamllsp.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- zls: Zig
lspconfig.zls.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

-- kotlin_language_server: Kotlin
lspconfig.kotlin_language_server.setup({
  capabilities = capabilities,
  on_attach = custom_attach,
})

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
