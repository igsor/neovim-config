-- autocompletion
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- show trailing whitespaces
vim.g.better_whitespace_enabled = true

-- show whitespace and tab mixtures
vim.g.show_spaces_that_precede_tabs = true

-- trim trailing whitespaces on save
vim.g.strip_whitespace_on_save = true
vim.g.strip_whitespace_confirm = false -- FIXME: seems not to work as expected

-- enable syntax highlighting (enabled by default)
--vim.opt.syntax = "enable"

vim.g.python_highlight_all = true
vim.g.syntastic_always_populate_loc_list = true
vim.g.syntastic_auto_loc_list = true
vim.g.syntastic_check_on_open = true
vim.g.syntastic_check_on_wq = false


vim.keymap.set("v", "<leader>tt", ":Tabularize /")

-- NOTE: syntastic can be integrated with airline!


--" Delete trailing white space on save
--func! DeleteTrailingWS()
--  exe "normal mz"
--  %s/\s\+$//ge
--  exe "normal `z"
--endfunc
--autocmd BufWrite *.py :call DeleteTrailingWS()
--autocmd BufWrite *.coffee :call DeleteTrailingWS()
--
--set statusline+=%#warningmsg#
--set statusline+=%{SyntasticStatuslineFlag()}
--set statusline+=%*
--
--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
--" => Helper functions
--"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
--" Don't close window, when deleting a buffer
--command! Bclose call <SID>BufcloseCloseIt()
--function! <SID>BufcloseCloseIt()
--   let l:currentBufNum = bufnr("%")
--   let l:alternateBufNum = bufnr("#")
--
--   if buflisted(l:alternateBufNum)
--     buffer #
--   else
--     bnext
--   endif
--
--   if bufnr("%") == l:currentBufNum
--     new
--   endif
--
--   if buflisted(l:currentBufNum)
--     execute("bdelete! ".l:currentBufNum)
--   endif
--endfunction
