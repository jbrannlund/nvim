vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = ' '

require("toggleterm").setup{}

vim = vim or {}

vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapBreakpointCondition', { text = '🟡', texthl = '', linehl = '', numhl = '' })
vim.fn.sign_define('DapLogPoint', { text = '🔵', texthl = '', linehl = '', numhl = '' })

