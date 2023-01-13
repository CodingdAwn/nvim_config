-- 加载自己的插件
return function(use)
  -- translator plugins
  use "CodingdAwn/vim-translator"
  -- markdown preview plugins
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- file explorer
  use({ 'nvim-tree/nvim-tree.lua', tag = 'nightly' })

  -- wiki
  use 'vimwiki/vimwiki'
  vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]")
  vim.cmd("let g:vimwiki_global_ext = 0")

  -- 配对括号和引号自动补全
  --use 'Raimondi/delimitMate'

  -- 显示搜索的索引 以及搜索到的总个数
  use 'google/vim-searchindex'

  -- 图标
  use "kyazdani42/nvim-web-devicons"

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

  use { 'jiangmiao/auto-pairs' }
end
