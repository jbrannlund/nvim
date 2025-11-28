vim.api.nvim_set_keymap('n', '<F2>', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Exit insert mode with 'jk' and 'Esc'
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Esc>', '<Esc>', { noremap = true, silent = true })  -- Re-enable 'Esc' for exiting insert mode


  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)


  -- Keybindings for controlling the debugger
vim.api.nvim_set_keymap('n', '<F5>', [[<Cmd>lua require'dap'.continue()<CR>]], { noremap = true, silent = true })  -- Start or continue debugging
vim.api.nvim_set_keymap('n', '<S-F10>', [[<Cmd>lua require'dap'.step_over()<CR>]], { noremap = true, silent = true })  -- Step over
vim.api.nvim_set_keymap('n', '<F11>', [[<Cmd>lua require'dap'.step_into()<CR>]], { noremap = true, silent = true })  -- Step into
vim.api.nvim_set_keymap('n', '<F12>', [[<Cmd>lua require'dap'.step_out()<CR>]], { noremap = true, silent = true })  -- Step out
vim.api.nvim_set_keymap('n', '<Leader>b', [[<Cmd>lua require'dap'.toggle_breakpoint()<CR>]], { noremap = true, silent = true })  -- Toggle breakpoint
vim.api.nvim_set_keymap('n', '<Leader>B', [[<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]], { noremap = true, silent = true })  -- Set conditional breakpoint

vim.api.nvim_set_keymap('n', '<Leader>dr', [[<Cmd>lua require'dap'.repl.open()<CR>]], { noremap = true, silent = true })  -- Open REPL
vim.api.nvim_set_keymap('n', '<Leader>du', [[<Cmd>lua require'dapui'.toggle()<CR>]], { noremap = true, silent = true })  -- Toggle DAP UI

vim.api.nvim_set_keymap('n', '<Leader>.', '<cmd>FineCmdline<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true, silent = true })


-- Key mappings for tabs using leader key
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true }) -- Open new tab
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true }) -- Close current tab
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext<CR>', { noremap = true, silent = true }) -- Switch to next tab
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprevious<CR>', { noremap = true, silent = true }) -- Switch to previous tab

-- Key mappings for splitting windows using leader key
vim.api.nvim_set_keymap('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true }) -- Split window horizontally
vim.api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true }) -- Split window vertically

vim.cmd([[
command! WQ wq
]])

vim.api.nvim_set_keymap('n', '<leader>sw', ':SudaWrite<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>Q', ':qa!<CR>', { noremap = true, silent = true })

-- Remove esc as escape insert mode force use jk 
vim.api.nvim_set_keymap('i', '<Esc>', '<Nop>', { noremap = true, silent = true })

-- Tabout
vim.api.nvim_set_keymap('i', '<S-Tab>', '<Plug>(Tabout)', {})
vim.api.nvim_set_keymap('n', 'dl', 'd$', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader>q', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>dh", "<cmd>lua require'dap.ui.widgets'.hover()<CR>", { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<Leader>ln', ':LuxtermNew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lt', ':LuxtermToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>lp', ':LuxtermNext<CR>', { noremap = true, silent = true })


