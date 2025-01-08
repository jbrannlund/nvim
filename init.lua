require("config.lazy")

vim.cmd[[colorscheme catppuccin]]

vim.opt.shortmess:append("W")
vim.opt.clipboard = "unnamedplus"


if not vim.g.vscode then
    require("mason-lspconfig").setup()
    require("ibl").setup()
    local load_lua_files = require("functions.load_lua_files")
    require('functions.layout')
    load_lua_files("lua/config")
    load_lua_files("lua/user-config")

else
    require('user-config.vscode') 

end
