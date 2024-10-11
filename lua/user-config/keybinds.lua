vim.api.nvim_set_keymap('n', '<F2>', ':Neotree toggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)

  -- Keybindings for controlling the debugger
vim.api.nvim_set_keymap('n', '<F5>', [[<Cmd>lua require'dap'.continue()<CR>]], { noremap = true, silent = true })  -- Start or continue debugging
vim.api.nvim_set_keymap('n', '<S-F10>', [[<Cmd>lua require'dap'.step_over()<CR>]], { noremap = true, silent = true })  -- Step over
vim.api.nvim_set_keymap('n', '<F11>', [[<Cmd>lua require'dap'.step_into()<CR>]], { noremap = true, silent = true })  -- Step into
vim.api.nvim_set_keymap('n', '<F12>', [[<Cmd>lua require'dap'.step_out()<CR>]], { noremap = true, silent = true })  -- Step out
vim.api.nvim_set_keymap('n', '<Leader>b', [[<Cmd>lua require'dap'.toggle_breakpoint()<CR>]], { noremap = true, silent = true })  -- Toggle breakpoint
vim.api.nvim_set_keymap('n', '<Leader>B', [[<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]], { noremap = true, silent = true })  -- Set conditional breakpoint
vim.api.nvim_set_keymap('n', '<Leader>dr', [[<Cmd>lua require'dap'.repl.open()<CR>]], { noremap = true, silent = true })  -- Open REPL
vim.api.nvim_set_keymap('n', '<Leader>du', [[<Cmd>lua require'dapui'.toggle()<CR>]], { noremap = true, silent = true })  -- Toggle DAP UI

vim.api.nvim_set_keymap('n', '<CR>', '<cmd>FineCmdline<CR>', {noremap = true})



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
