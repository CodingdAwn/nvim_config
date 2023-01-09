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

  -- 配对括号和引号自动补全
  use 'Raimondi/delimitMate'

  -- indentLine 显示tab那些缩进的线
  use 'Yggdroot/indentLine'

  -- 显示搜索的索引 以及搜索到的总个数
  use 'google/vim-searchindex'

  -- color schme
  use 'ellisonleao/gruvbox.nvim'
end
