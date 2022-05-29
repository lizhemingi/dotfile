local M = {}

function M.config()
    -- Setup nvim-cmp.
    local cmp = require'cmp'
    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
            -- luasnip
            require('luasnip').lsp_expand(args.body)
            -- vsnip
            -- vim.fn["vsnip#anonymous"](args.body)
            -- snippy
            -- require('snippy').expand_snippet(args.body)
            -- ultisnip
            -- vim.fn["UltiSnips#Anon"](args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            -- { name = 'luasnip' }, -- For luasnip users.
            -- { name = 'ultisnips' }, -- For ultisnips users.
            -- { name = 'snippy' }, -- For snippy users.
        }, {{ name = 'buffer' }})
    })
    
    -- nvim-cmp for commands
    cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = 'buffer' }
        }
    })
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = 'path' }
        }, {
            { name = 'cmdline' }
        })
    })

    -- nvim-lspconfig config
    -- List of all pre-configured LSP servers:
    -- github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    local servers = { 'ccls', 'gopls', 'rust_analyzer', 'pyright'}
    for _, lsp in pairs(servers) do
        require('lspconfig')[lsp].setup {
            on_attach = on_attach
        }
    end
end

return M

