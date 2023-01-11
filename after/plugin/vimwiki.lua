-- autocmd FileType wiki,vimwiki nnoremap <buffer> <leader>wd :VimwikiToggleListItem<CR>
vim.api.nvim_create_autocmd("FileType", { pattern = { "wiki", "vimwiki" }, command = [[nnoremap <buffer> <leader>wd :VimwikiToggleListItem<CR>]] })

--vim.g.vimwiki_global_ext = 0
--vim.g.vimwiki_ext2syntax = {}
--vim.g.vimwiki_list = { path = '~/vimwiki/', syntax = 'markdown', ext = '.md' }
--vim.g.vimwiki_list = { path = '~/vimwiki/', ext = '.md', syntax = 'markdown' }

--vim.cmd("let g:vimwiki_ext2syntax = {'.md': 'markdown'}")
--vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'default', 'ext':'.wiki'}]")
--vim.cmd("let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]")
--vim.cmd("let g:vimwiki_global_ext = 0")
