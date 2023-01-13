local cmp = require 'cmp'

cmp.setup {
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
  }
}

vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, { desc = 'Format current buffer' })
