-- 关闭当前buffer
vim.keymap.set('n', '<leader>cc', '<cmd>q<CR>', { desc = 'quit vim rapid' })

-- 使用jk返回normal模式
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'go to normal mode' })
vim.keymap.set('x', 'jk', '<ESC>', { desc = 'go to normal mode' })
vim.keymap.set('c', 'jk', '<ESC>', { desc = 'go to normal mode' })

-- 复制到剪切板中
vim.keymap.set('n', '<leader>y', '"+y', { desc = 'copy to global clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'copy to global clipboard' })
vim.keymap.set('n', '<leader>p', '"+p', { desc = 'paste from global clipboard' })
vim.keymap.set('v', '<leader>p', '"+p', { desc = 'paste from global clipboard' })

-- 移动整行
vim.keymap.set('n', '<a-j>', '<cmd>m .+1<CR>', { desc = 'move line down' })
vim.keymap.set('n', '<a-k>', '<cmd>m .-2<CR>', { desc = 'move line up' })

-- 移动到其他windows
vim.keymap.set('n', '<leader>h', '<c-w>h', { desc = 'move windows' })
vim.keymap.set('n', '<leader>l', '<c-w>l', { desc = 'move windows' })
vim.keymap.set('n', '<leader>j', '<c-w>j', { desc = 'move windows' })
vim.keymap.set('n', '<leader>k', '<c-w>k', { desc = 'move windows' })

vim.keymap.set('i', '<c-h>', '<left>', { desc = 'move windows' })
vim.keymap.set('i', '<c-l>', '<right>', { desc = 'move windows' })
vim.keymap.set('i', '<c-j>', '<down>', { desc = 'move windows' })
vim.keymap.set('i', '<c-k>', '<up>', { desc = 'move windows' })

-- change work dir to git root
local function cwd_git_root()
  vim.api.nvim_command('cd %:p:h')
  local git_root_path =
  require("plenary.job"):new({ command = "git", args = { "rev-parse", "--show-toplevel" } }):sync()[1]
  vim.fn.chdir(git_root_path)
  print('current cwd is ' .. git_root_path)
end
vim.keymap.set('n', '<a-r>', cwd_git_root, { desc = 'cwd to git root' })

-- 直接打开neovim config init.lua 并且设置好cwd dir
local function home_neovim_config()
  vim.api.nvim_command('e ~/.config/nvim/init.lua')
  cwd_git_root()
end
vim.keymap.set('n', '<leader>cof', home_neovim_config, { desc = 'open neovim config init.lua' })

-- Use K to show documentation in preview window
local function show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    else
        vim.lsp.buf.hover()
    end
end
vim.keymap.set("n", "K", show_docs, { desc = 'Hover Documentation', silent = true })
