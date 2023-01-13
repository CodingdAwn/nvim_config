-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    side = "right",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>no', '<cmd>NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>nt', '<cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>nf', '<cmd>NvimTreeFindFile<CR>')
vim.keymap.set('n', '<leader>nr', '<cmd>NvimTreeRefresh<CR>')

require'nvim-web-devicons'.setup {
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
