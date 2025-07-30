return {
  vim.keymap.set('n', '<leader>ct', '<cmd>!compile_teensy<CR>', { desc = '[C]ompile [T]eensy' }),
  vim.keymap.set('n', '<leader>pt', '<cmd>!program_teensy<CR>', { desc = '[P]rogram [T]eensy' }),
  vim.keymap.set('n', '<leader>rp', '<cmd>w<CR> <cmd>!python3 %<CR>', { desc = '[R]un [P]ython' }),
}
