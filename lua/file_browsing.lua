-- TODO: WiLd menu spans multiple lines (keeps history)

-- turn on the WiLd menu
vim.opt.wildmenu = true

-- ignore compiled files
vim.opt.wildignore = {"*.o", "*~", "*.pyc"}

-- bash-like completion for file menu
vim.opt.wildmode = {"longest", "list"}

-- Ignore files in NERDTree
vim.g.NERDTreeIgnore = {"__pycache__", "\\.pyc$", "\\~$"}

-- TODO: :tree -> :NERDTree
--autocmd VimEnter * NERDTree | wincmd p
--nnoremap <leader>n :NERDTreeFocus<CR>
--nnoremap <C-n> :NERDTree<CR>
--nnoremap <C-t> :NERDTreeToggle<CR>
--nnoremap <C-f> :NERDTreeFind<CR>
