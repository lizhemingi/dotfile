-- basics
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.opt.termguicolors   = true
vim.opt.shiftround      = true
vim.opt.updatetime      = 100
vim.opt.cursorline      = true
vim.opt.autowrite       = true
vim.opt.incsearch       = true
vim.opt.ignorecase      = true
vim.opt.confirm         = true
vim.opt.hidden          = true

-- tabs
vim.opt.autoindent      = true
vim.opt.tabstop         = 2 
vim.opt.shiftwidth      = 2 
vim.opt.softtabstop     = 2 
vim.opt.expandtab       = true
vim.cmd('autocmd Filetype go setlocal ts=4 sw=4 sts=4 expandtab')

-- better backup, swap and undos storage
vim.cmd('set backup')
vim.cmd('set undofile')
local dirs = {
  vim.fn.expand('~/.vim/dirs/tmp'),  -- place swap files
  vim.fn.expand('~/.vim/dirs/backups'), -- place backup files
  vim.fn.expand('~/.vim/dirs/undos'), -- place undos
}
vim.opt.directory = dirs[0]
vim.opt.backupdir = dirs[1]
vim.opt.undodir = dirs[2]
for i, dir in ipairs(dirs) do
  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
end

require("core.plugins")
require("core.keymaps")
require("impatient")
vim.g.go_fmt_command = "goimports"
vim.g.rustfmt_autosave = 1
vim.g.EasyMotion_smartcase = 1
vim.cmd('colorscheme sonokai')
vim.cmd('set mouse=a')

require("configs.autocomplete").config()
require("configs.statusline").config()
require("configs.treesitter").config()
require("configs.startscreen").config()
require('rust-tools').setup({})
