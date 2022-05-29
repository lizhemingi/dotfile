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
