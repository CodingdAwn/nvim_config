vim.keymap.set('n', '<leader>sg', require('telescope.builtin').git_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sl', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })

-- find_files会在当前目录下查找
-- 想在工程下查找 1.使用git_files 2.切换目录
-- use a-r to change current work dir to git root, keymap is at dawn/keymaps.lua
