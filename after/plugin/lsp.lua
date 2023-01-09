--vim.keymap.del('n', 'gI')
--vim.keymap.del('n', '<leader>D')

vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', '<leader>td', vim.lsp.buf.type_definition, { desc = 'Type [D]efinition' })
