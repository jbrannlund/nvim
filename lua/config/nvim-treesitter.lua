vim.cmd[[colorscheme nord]]

-- Tree-sitter setup
require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}

-- Optional: Customize Tree-sitter colors (if needed)
local ts_highlight = require('vim.treesitter.highlighter')
