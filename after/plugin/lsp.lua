-- Reserve a space in the gutter
vim.opt.signcolumn = 'yes'

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

-- These are just examples. Replace them with the language
-- servers you have installed in your system
local lspconfig = require('lspconfig')

lspconfig.asm_lsp.setup({})
lspconfig.bashls.setup({})
lspconfig.clangd.setup({})
lspconfig.cssls.setup({})
lspconfig.cssmodules_ls.setup({})
lspconfig.css_variables.setup({})
lspconfig.denols.setup({})
lspconfig.dockerls.setup({})
lspconfig.emmet_ls.setup({})
lspconfig.eslint.setup({})
lspconfig.gradle_ls.setup({})
lspconfig.grammarly.setup({})
lspconfig.html.setup({})
lspconfig.hyprls.setup({})
lspconfig.java_language_server.setup({})
lspconfig.luau_lsp.setup({})
lspconfig.marksman.setup({})
lspconfig.mdx_analyzer.setup({})
lspconfig.nginx_language_server.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.sqlls.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.ts_ls.setup({})
lspconfig.ziggy.setup({})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})
