vim.opt.clipboard = "unnamedplus"
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.tabstop = 4       
vim.opt.shiftwidth = 4   
vim.opt.expandtab = true 
vim.opt.timeout = true
vim.opt.timeoutlen = 250
vim.opt.ttimeoutlen = 50

vim = vim or {}

vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🟡', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = '🔵', texthl = '', linehl = '', numhl = '' })

vim.opt.foldmethod = 'expr' 
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevel = 99 
