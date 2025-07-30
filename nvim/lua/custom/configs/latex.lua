return {
  vim.keymap.set('n', '<leader>br', '<cmd>w<CR> <cmd>!buildtex *.tex<CR>', { desc = '[B]uild LaTeX file with [R]eferences' }),
  vim.keymap.set('n', '<leader>bw', '<cmd>w<CR> <cmd>!buildtex *.tex --nobiber<CR>', { desc = '[B]uild LaTeX file [W]ithout references' }),
}
