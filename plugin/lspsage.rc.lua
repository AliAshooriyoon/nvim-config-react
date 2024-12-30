local status, saga = pcall(require, 'lspsaga')
if not status then return end

-- LSPSaga setup with lightbulb disabled
saga.setup({
  code_action_lightbulb = {
    enable = false,           -- Disable the light bulb completely
    enable_in_insert = false, -- Disable in insert mode
    sign = false,             -- Disable light bulb sign in the gutter
    virtual_text = false,     -- Disable virtual text for light bulbs
  },
})

-- Key mappings for LSPSaga
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<cr>', opts)

