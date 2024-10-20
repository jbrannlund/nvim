require("config.lazy")

vim.cmd[[colorscheme catppuccin]]

local load_lua_files = require("functions.load_lua_files")
load_lua_files("lua/config")

-- Load user-specific configurations
load_lua_files("lua/user-config")
vim.opt.shortmess:append("W")

require('dap').set_log_level('DEBUG')
require("ibl").setup()
