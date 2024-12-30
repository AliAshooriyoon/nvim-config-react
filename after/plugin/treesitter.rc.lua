--local status, ts = pcall(require, 'nvim-treesitter.configs')
--if not status then
--  vim.notify('Failed to load nvim-treesitter.configs', vim.log.levels.ERROR)
-- return
--end

-- ts.setup {
--highlight = {
-- enable = true,
-- disable = {}, -- Disable specific languages if needed
-- },
-- indent = {
--  enable = true,
-- disable = {}, -- Disable specific languages if needed
-- },
-- ensure_installed = {
--  'tsx',
--  'lua',
--  'json',
--  'css',
--  'javascript',
--  'php',
--  'python',
--  },
--  autotag = {
--   enable = true, -- Enables autotag functionality
--  },
--}

local status, ts = pcall(require, 'nvim-treesitter.configs')
if not status then
  vim.notify('Failed to load nvim-treesitter.configs', vim.log.levels.ERROR)
  return
end

ts.setup {
  highlight = {
    enable = true,
    disable = {}, -- Disable specific languages if needed
  },
  indent = {
    enable = true,
    disable = {}, -- Disable specific languages if needed
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'html',
    'javascript',
    'php',
    'cpp',
    'ruby',
    'bash',
    'python',
    'rust',
    'java',
    'styled',
  },
}
