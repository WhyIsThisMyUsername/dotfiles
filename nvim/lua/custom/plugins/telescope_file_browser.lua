return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<leader>sb', '<cmd>Telescope file_browser<cr>', { desc = '[S]earch File [B]rowser' })
  end,
}
