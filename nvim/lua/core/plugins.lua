-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- starup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    use 'sainnhe/sonokai'

    use 'scrooloose/nerdtree'

    -- language
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'

    -- git
    use 'airblade/vim-gitgutter'
    use 'tpope/vim-fugitive'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- tagbar
    use {
        'liuchengxu/vista.vim',
        requires = 'junegunn/fzf'
    }
    use 'junegunn/fzf.vim'
    use 'easymotion/vim-easymotion'

    -- floating terminal
    use 'voldikss/vim-floaterm'

    -- file telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    use 'rust-lang/rust.vim'
    use 'simrat39/rust-tools.nvim'
    use 'fatih/vim-go'
    use 'jiangmiao/auto-pairs'

    use 'goolord/alpha-nvim'
end)

