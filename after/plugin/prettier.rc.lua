local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'css',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'python',
    'json',
    'scss',
    'less'
  }
}
