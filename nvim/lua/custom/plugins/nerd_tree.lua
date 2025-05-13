return {
  'preservim/nerdtree',
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>nt', '<cmd>NERDTree<cr>', { desc = '[N]erd[T]ree' })
    keymap.set('n', '<leader>ntt', '<cmd>NERDTreeToggle<cr>', { desc = '[N]erd[T]ree[T]oggle' })
    keymap.set('n', '<leader>ntf', '<cmd>NERDTreeFind<cr>', { desc = '[N]erd[T]ree[F]ind' })
  end,
}
