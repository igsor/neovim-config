return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            indent = { enable = true },
            folds = { enable = true },
            highlight = {
                enable = true,
                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                -- Using this option may slow down your editor, and you may see some duplicate highlights.
                -- Instead of true it can also be a list of languages
                additional_vim_regex_highlighting = false,
            },
            -- enable incremental selection
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>", -- set to `false` to disable one of the mappings
                    node_incremental = "<CR>",
                    scope_incremental = "<TAB>",
                    node_decremental = "<S-TAB>",
                },
            },
            ensure_installed = {
                "awk",
                "bash",
                "bibtex",
                "cmake",
                "c",
                "css",
                "csv",
                "dot",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
                "gnuplot",
                "diff",
                "html",
                "json",
                "json5",
                "lua",
                "luadoc",
                "make",
                "markdown",
                "markdown_inline",
                "perl",
                "php",
                "python",
                "regex",
                "sparql",
                "sql",
                "toml",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
            }
        },
        config = function(_, opts)
            -- enable treesitter
            require("nvim-treesitter.configs").setup(opts)
        end,
        init = function()
            -- enable folding
            vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
            vim.wo[0][0].foldmethod = 'expr'
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        -- FIXME: master branch is locked. should switch to main as soon as it becomes stable
        branch = "main",
        init = function()
            -- Disable entire built-in ftplugin mappings to avoid conflicts.
            -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
            vim.g.no_plugin_maps = true
            -- Or, disable per filetype (add as you like)
            -- vim.g.no_python_maps = true
        end,
        opts = {
            move = {
                enable = true,
                set_jumps = true, -- whether to set jumps in the jumplist
            },
        },
        config = function(_, opts)
            require("nvim-treesitter-textobjects").setup(opts)

            local move = require("nvim-treesitter-textobjects.move")

            vim.keymap.set({ "n", "x", "o" }, "]m", function() move.goto_next_start("@function.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]]", function() move.goto_next_start("@class.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]a", function() move.goto_next_start("@parameter.inner", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]n", function() move.goto_next_start("@statement.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]b", function() move.goto_next_start("@block.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]=", function() move.goto_next_start("@assignment.lhs", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]c", function() move.goto_next_start("@call.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]C", function() move.goto_next_start("@call.inner", "textobjects") end)

            vim.keymap.set({ "n", "x", "o" }, "[m", function() move.goto_previous_start("@function.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[[", function() move.goto_previous_start("@class.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[a", function() move.goto_previous_start("@parameter.inner", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[n", function() move.goto_previous_start("@statement.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[b", function() move.goto_previous_start("@block.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[=", function() move.goto_previous_start("@assignment.lhs", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[c", function() move.goto_previous_start("@call.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[C", function() move.goto_previous_start("@call.inner", "textobjects") end)

            vim.keymap.set({ "n", "x", "o" }, "]M", function() move.goto_next_end("@function.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "][", function() move.goto_next_end("@class.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]N", function() move.goto_next_end("@statement.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]A", function() move.goto_next_end("@parameter.inner", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "]B", function() move.goto_next_end("@block.outer", "textobjects") end)

            vim.keymap.set({ "n", "x", "o" }, "[M", function() move.goto_previous_end("@function.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[[", function() move.goto_previous_end("@class.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[N", function() move.goto_previous_end("@statement.outer", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[A", function() move.goto_previous_end("@parameter.inner", "textobjects") end)
            vim.keymap.set({ "n", "x", "o" }, "[B", function() move.goto_previous_end("@block.outer", "textobjects") end)
        end,
    },
    {
        'gsuuon/tshjkl.nvim',
        opts = {
            -- false to highlight only. Note that enabling this will hide the highlighting of child nodes
            select_current_node = true,
            keymaps = {
              toggle = '<leader>ts',
            },
            marks = {
                parent = {
                    virt_text = { {'h', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                },
                child = {
                    virt_text = { {'l', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                },
                prev = {
                    virt_text = { {'k', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                },
                next = {
                    virt_text = { {'j', 'ModeMsg'} },
                    virt_text_pos = 'overlay'
                }
            },
        },
    },
}
