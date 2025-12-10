local opts = { noremap = true, silent = true }

vim.opt.timeout = true
vim.opt.timeoutlen = 250
vim.opt.ttimeoutlen = 50

vim.keymap.set('n', '<F2>', ':Neotree toggle<CR>', opts)

vim.keymap.set('i', 'jk', '<Esc>', opts)
vim.keymap.set('i', '<Esc>', '<Nop>', opts)

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)

vim.keymap.set('n', '<Leader>.', '<cmd>FineCmdline<CR>', opts)
vim.keymap.set('n', ':', '<cmd>FineCmdline<CR>', opts)

vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tc', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', opts)
vim.keymap.set('n', '<leader>th', ':tabprevious<CR>', opts)

vim.keymap.set('n', '<leader>sh', ':split<CR>', opts)
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', opts)

vim.cmd([[command! WQ wq]])

vim.keymap.set('n', '<leader>sw', ':SudaWrite<CR>', opts)
vim.keymap.set('n', '<leader>Q', ':qa!<CR>', opts)

vim.keymap.set('i', '<S-Tab>', '<Plug>(Tabout)', opts)
vim.keymap.set('n', 'dl', 'd$', opts)

vim.keymap.set('n', '<Leader>h', '<C-w>h', opts)
vim.keymap.set('n', '<Leader>j', '<C-w>j', opts)
vim.keymap.set('n', '<Leader>k', '<C-w>k', opts)
vim.keymap.set('n', '<Leader>l', '<C-w>l', opts)
vim.keymap.set('n', '<Leader>q', '<C-w>w', opts)

vim.keymap.set('n', '<Leader>dh', "<cmd>lua require'dap.ui.widgets'.hover()<CR>", opts)

vim.keymap.set('n', '<Leader>ln', ':LuxtermNew<CR>', opts)
vim.keymap.set('n', '<Leader>lt', ':LuxtermToggle<CR>', opts)
vim.keymap.set('n', '<Leader>lp', ':LuxtermNext<CR>', opts)

