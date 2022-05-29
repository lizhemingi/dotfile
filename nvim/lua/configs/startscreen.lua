-- aleph is a stripped down version of goolord/alpha-nvim to improve startup time
local M = {}
function M.config()
    require'alpha'.setup(require'alpha.themes.dashboard'.config)
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')
    dashboard.section.header.val = {
        "　　　　　　┏┓　　　┏┓+ +",
        "",
        "　　　　　┏┛┻━━━┛┻┓ + +",
        "",
        "　　　　　┃　　　　　　　┃",
        "",
        "　　　　　┃　　　━　　　┃ ++ + + +",
        "",
        "　　　　 ████━████ ┃+",
        "",
        "　　　　　┃　　　　　　　┃ +",
        "",
        "　　　　　┃　　　┻　　　┃",
        "",
        "　　　　　┃　　　　　　　┃ + +",
        "",
        "　　　　　┗━┓　　　┏━┛",
        "",
        "　　　　　　　┃　　　┃",
        "",
        "　　　　　　　┃　　　┃ + + + +",
        "",
        "　　　　　　　┃　　　┃　　　　Code is far away from bug with the animal protecting",
        "",
        "　　　　　　　┃　　　┃ + 　　　　",
        "",
        "　　　　　　　┃　　　┃",
        "",
        "　　　　　　　┃　　　┃　　+",
        "",
        "　　　　　　　┃　 　　┗━━━┓ + +",
        "",
        "　　　　　　　┃ 　　　　　　　┣┓",
        "",
        "　　　　　　　┃ 　　　　　　　┏┛",
        "",
        "　　　　　　　┗┓┓┏━┳┓┏┛ + + + +",
        "",
        "　　　　　　　　┃┫┫　┃┫┫",
        "",
        "　　　　　　　　┗┻┛　┗┻┛+ + + +",
    }
    dashboard.section.buttons.val = {
        dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
    }
    --local handle = io.popen('fortune')
    --local fortune = handle:read("*a")
    --handle:close()
    dashboard.section.footer.val = "An apple a day, keep the bug away"
    alpha.setup(dashboard.opts)
end
return M
