local status, nvim_lsp = pcall(require, 'lspconfig')
if not status then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- Formatting on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- TypeScript and JavaScript Language Server
nvim_lsp.ts_ls.setup { -- Replaced 'tsserver' with 'ts_ls'
  on_attach = on_attach,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

-- Lua Language Server
nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
}

