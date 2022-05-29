vim.g.mapleader = ' '

local function map(mode, lhs, rhs)
vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap=true})
end

local function remap(mode, lhs, rhs)
vim.api.nvim_set_keymap(mode, lhs, rhs, {})
end

local function mapcmd(key, cmd)
vim.api.nvim_set_keymap('n', key, ':'..cmd..'<cr>', {noremap=true})
end

mapcmd('<c-n>', 'nohl')
map('n', '<leader>y', '"*y')
map('v', '<leader>y', '"*y')
map('n', '<leader>yy', '"*yy')
map('n', '<leader>p', '"*p')
map('v', '<', '<gv')
map('v', '>', '>gv')
map('i', '<c-e>', '<ESC>A')

-- window
map('n', '<c-h>', '<c-w>h')
map('n', '<c-j>', '<c-w>j')
map('n', '<c-k>', '<c-w>k')
map('n', '<c-l>', '<c-w>l')

-- buffer
mapcmd('<leader>bn', 'bn')
mapcmd('<leader>bp', 'bp')

-- tab
map('n', '<leader>1', '1gt')
map('n', '<leader>2', '2gt')
map('n', '<leader>3', '3gt')
map('n', '<leader>4', '4gt')
map('n', '<leader>5', '5gt')
map('n', '<leader>6', '6gt')
map('n', '<leader>7', '7gt')
map('n', '<leader>8', '8gt')
map('n', '<leader>9', '9gt')
mapcmd('<leader>tt', "tabnext")
mapcmd('<leader>bb', "tabprevious")
mapcmd('<leader>tn', "tabnew")

-- plugin command
mapcmd('<leader>n', 'NERDTreeFind') -- focus on current file
mapcmd('<leader>x', 'Vista finder nvim_lsp') -- using nvim_lsp to search symbol of current file
mapcmd('<c-p>', "Telescope find_files") -- search for file name
mapcmd('<leader>yg', "Telescope live_grep") -- search for text global
mapcmd('<leader>yb', "Telescope buffers") -- search for text within buffers
mapcmd('<leader>gb', "Git blame")
remap('n', '<leader>jj', '<Plug>(easymotion-overwin-f)')

-- search
map('n', '<leader>ss', '/')
map('n', '<leader>sw', '/\\<lt>\\><left><left>')

-- lsp
mapcmd('<leader>le', 'lua vim.diagnostic.open_float()')
mapcmd('<leader>lq', 'lua vim.diagnostic.setloclist()')
mapcmd('<leader>rn', 'lua vim.lsp.buf.rename()')
mapcmd('<leader>lh', 'lua vim.lsp.buf.signature_help()')
mapcmd('<leader>la', 'lua vim.lsp.buf.code_action()')
mapcmd('<leader>lf', 'lua vim.lsp.buf.formatting()')

mapcmd('gd', 'lua vim.lsp.buf.definition()')
mapcmd('gr', 'lua vim.lsp.buf.references()')
mapcmd('K', 'lua vim.lsp.buf.hover()')
mapcmd('gt', 'lua vim.lsp.buf.type_definition()')
mapcmd('gi', 'lua vim.lsp.buf.implementation()')
mapcmd('gp', 'lua vim.diagnostic.goto_prev()')
mapcmd('gn', 'lua vim.diagnostic.goto_next()')

mapcmd('<leader>wa', 'lua vim.lsp.buf.add_workspace_folder()')
mapcmd('<leader>wr', 'lua vim.lsp.buf.remove_workspace_folder()')
mapcmd('<leader>wl', 'lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))')

-- t: terminal
mapcmd('<leader>tm', 'FloatermToggle')

