local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- starup time optimise
    "dstein64/vim-startuptime",
    "lewis6991/impatient.nvim",
    "nathom/filetype.nvim",

    "sainnhe/sonokai",

    "scrooloose/nerdtree",

    -- language
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",
    "nvim-treesitter/nvim-treesitter",

    "rust-lang/rust.vim",
    "simrat39/rust-tools.nvim",
    "fatih/vim-go",

    -- git
    "airblade/vim-gitgutter",
    "tpope/vim-fugitive",

    -- status line
    {
      "nvim-lualine/lualine.nvim",
      dependencies = {"kyazdani42/nvim-web-devicons"},
    },

    -- tagbar
    {
      "liuchengxu/vista.vim",
      dependencies = {"junegunn/fzf"},
    },

    "junegunn/fzf.vim",
    "easymotion/vim-easymotion",

  -- floating terminal
    "voldikss/vim-floaterm",

  -- file telescope
    {
      "nvim-telescope/telescope.nvim",
      dependencies = {"nvim-lua/plenary.nvim"},
    },

    "jiangmiao/auto-pairs",

    "goolord/alpha-nvim",
})

