-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})

-- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
-- Set configuration for specific filetype.
--[[ cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'git' },
  }, {
    { name = 'buffer' },
  })
)
equire("cmp_git").setup() ]]--

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['pylsp'].setup {
  capabilities = capabilities
}


-- cmp.PreselectMode = cmp.PreselectMode.Item
-- cmp.expandable_indicator
--
--formatting.fields~
-- `cmp.ItemField[]`
-- An array of completion fields to specify their order.

--                                                 *cmp-config.formatting.format*
-- formatting.format~
-- `fun(entry: cmp.Entry, vim_item: vim.CompletedItem): vim.CompletedItem`
-- The function used to customize the appearance of the completion menu. See
-- |complete-items|. This value can also be used to modify the `dup` property.
-- NOTE: The `vim.CompletedItem` can contain the special properties
-- `abbr_hl_group`, `kind_hl_group` and `menu_hl_group`.

-- view.docs.auto_open~
-- `boolean`

-- Specify whether to show the docs_view when selecting an item.

-- view.entries.follow_cursor~
-- `boolean`

-- Specify whether the pmenu should follow the current position of the cursor
-- as the user types. Custom view only. `false` by default.

-- window.completion.side_padding~
-- `number`
-- The amount of padding to add on the completion window's sides

-- window.{completion,documentation}.border~
-- `string | string[] | nil`
-- Border characters used for the completion popup menu when |experimental.native_menu| is disabled.
-- See |nvim_open_win|.

-- *cmp-config.window.{completion,documentation}.winhighlight*
-- window.{completion,documentation}.winhighlight~
-- `string | cmp.WinhighlightConfig`
-- Specify the window's winhighlight option.
-- See |nvim_open_win|.

-- *cmp-config.window.{completion,documentation}.winblend*
-- window.{completion,documentation}.winblend~
-- `string | cmp.WinhighlightConfig`
-- Specify the window's winblend option.
-- See |nvim_open_win|.


-- view~
-- `{ docs: cmp.DocsViewConfig }`
-- `{ entries: cmp.EntriesViewConfig|string }`
-- The view class used to customize nvim-cmp's appearance.
-- Currently available configuration options are:

-- matching.disallow_fuzzy_matching~
-- `boolean`
-- Whether to allow fuzzy matching.

