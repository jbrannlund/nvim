if vim.g.vscode then
    vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true, silent = true })
end

vim.opt.clipboard = "unnamedplus"
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.tabstop = 4       -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4    -- Number of spaces for each step of (auto)indent
vim.opt.expandtab = true  -- Use spaces instead of tabs

vim = vim or {}

vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🟡', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = '🔵', texthl = '', linehl = '', numhl = '' })

vim.opt.foldmethod = 'expr' 
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    vim.opt.foldlevel = 99  -- Ensures all folds are operation

