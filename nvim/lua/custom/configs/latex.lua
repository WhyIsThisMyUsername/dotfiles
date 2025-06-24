return {
  vim.keymap.set('n', '<C-b><C-b>', '<cmd>w<CR> <cmd>!buildtex *.tex<CR>', { desc = 'Build LaTeX file with references' }),
  vim.keymap.set('n', '<C-b><C-n>', '<cmd>w<CR> <cmd>!buildtex *.tex --nobiber<CR>', { desc = 'Build LaTeX file without references' }),
}
