return {
  'L3MON4D3/LuaSnip',
  -- follow latest release.
  version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = 'make install_jsregexp',

  config = function()
    vim.cmd [[
    " Use Tab to expand and jump through snippets
    imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
    smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

    " Use Shift-Tab to jump backwards through snippets
    imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
    smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]
    local luasnip = require 'luasnip'
    luasnip.config.setup {
      enable_autosnippets = true,
      store_selection_keys = '<Tab>',
    }

    local auto_expand = require('luasnip').expand_auto
    require('luasnip').expand_auto = function(...)
      vim.o.undolevels = vim.o.undolevels
      auto_expand(...)
    end

    vim.g.tex_flavor = 'latex'
  end,

  require('luasnip.loaders.from_lua').load { paths = '~/.config/nvim/lua/custom/luasnip/' },
}
