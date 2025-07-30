return {
  'CopilotC-Nvim/CopilotChat.nvim',
  dependencies = {
    { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
    { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
  },
  build = 'make tiktoken', -- Only on MacOS or Linux
  opts = {
    -- See Configuration section for options
  },
  -- See Commands section for default commands if you want to lazy load on them
  config = function(_, opts)
    local chat = require 'CopilotChat'
    chat.setup(opts)
    vim.g.copilot_no_tab_map = true
    vim.cmd 'let g:copilot_no_tab_map = v:true'
    local keymap = vim.keymap
    keymap.set('n', '<leader>cct', '<cmd>CopilotChatToggle<cr>', { desc = '[C]opilot[C]hat[T]oggle' })
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
    keymap.set('n', '<leader>cit', function()
      if vim.g.copilot_enabled == 1 then
        vim.cmd 'Copilot disable'
        vim.g.copilot_enabled = 0
      else
        vim.cmd 'Copilot enable'
        vim.g.copilot_enabled = 1
      end
      vim.cmd 'Copilot status'
    end, { desc = '[C]opilot[I]nline[T]oggle' })
  end,
}
