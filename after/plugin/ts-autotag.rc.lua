local status, autotag = pcall(require, 'nvim-ts-autotag')
if not status then
  vim.notify('Failed to load nvim-ts-autotag', vim.log.levels.ERROR)
  return
end

-- Proper setup for nvim-ts-autotag
autotag.setup()

