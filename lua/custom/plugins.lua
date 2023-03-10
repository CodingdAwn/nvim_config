-- TODO vim.cmd的命令 在没有安装插件的情况下会报错 优化下体验
-- 加载自己的插件
return function(use)
  -- translator plugins
  use { 'CodingdAwn/vim-translator', config = function()
    require('custom.vim-translator')
  end }

  -- markdown preview plugins
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- file explorer
  use({ 'nvim-tree/nvim-tree.lua', tag = 'nightly' })

  -- wiki
  use { 'vimwiki/vimwiki', setup = function()
    require('custom.vimwiki')
  end }

  -- 显示搜索的索引 以及搜索到的总个数
  use { 'google/vim-searchindex' }

  -- 图标
  use { "kyazdani42/nvim-web-devicons" }

  -- cmp的补充
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }

  -- 更多的色彩
  use { 'norcalli/nvim-colorizer.lua', config = function()
    require("colorizer").setup {}
  end }

  -- terminal
  use { "akinsho/toggleterm.nvim" }

  use { "tpope/vim-surround" }

  -- like delimitMate
  use { 'jiangmiao/auto-pairs' }

  -- a better git diff, merge plugin
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  --use {"olimorris/onedarkpro.nvim"}
  --vim.cmd("colorscheme onedark")
end
