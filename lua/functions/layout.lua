local function setup_layout_and_tmux()
  vim.cmd('vsplit')
  vim.cmd('wincmd l')
  vim.cmd('split')
  vim.cmd('resize +10')
  vim.cmd('wincmd j')
  vim.cmd('resize -10')
  vim.cmd('term tmux')
end

vim.keymap.set('n', '<Leader>dt', setup_layout_and_tmux, { noremap = true, silent = true })

