vim.keymap.set('n', '<leader>sg', require('telescope.builtin').git_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sl', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>st', require('telescope.builtin').keymaps, { desc = '[S]earch by [K]eymap' })
vim.keymap.set('n', '<leader>sc', require('telescope.builtin').commands, { desc = '[S]earch by [C]ommand' })
vim.keymap.set('n', '<leader>sa', require('telescope.builtin').autocommands, { desc = '[S]earch by [A]utocommand' })
vim.keymap.set('n', '<leader>sv', require('telescope.builtin').vim_options, { desc = '[S]earch by [V]im options' })

require('telescope').setup {
  defaults = {
    path_display = { 'truncate' }
  }
}

-- find_files会在当前目录下查找
-- 想在工程下查找 1.使用git_files 2.切换目录
-- use a-r to change current work dir to git root, keymap is at dawn/keymaps.lua
