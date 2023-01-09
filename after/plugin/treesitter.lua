-- treesitter
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', 'help', 'vim', 'c_sharp' },
  --[[
  highlight = {
    enable = true,
    disable = { 'c_sharp' },
  },
  --]]
}
