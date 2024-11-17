-- RUFF

require('lspconfig').ruff.setup({})

vim.keymap.set(
    'n',
    '<leader>f',
    function()
        vim.lsp.buf.format { async = true }
        vim.lsp.buf.code_action {
          context = { only = { 'source.organizeImports' } },
          apply = true,
        }
    end,
    bufopts
)

-- JEDI
-- require('lspconfig').jedi_language_server.setup{}

-- TODO: replace by python-lsp-server which also builds on jedi but brings in additional features like autoimport through rope
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}

-- NOTE: add .ignore file in project root with paths and patterns to be ignored by telescope


require('lsp_signature').setup() -- TODO: see if can be replaced
