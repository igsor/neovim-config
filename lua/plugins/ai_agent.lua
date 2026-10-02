return {
    {
        "pablopunk/pi.nvim",
        dependencies = {
            "rcarriga/nvim-notify",
            -- FIXME: should configure telescope if nvim-notify is used
            -- require("telescope").load_extension("notify")
            -- require('telescope').extensions.notify.notify(<opts>)
        },
        opts = {
            binary = "~/.local/share/pi-node/current/bin/pi",
            -- provider = "llama.cpp",
            -- model = "ggml-org/Qwen3.5-0.8B-GGUF:Q8_0",
            thinking = "off", -- be careful, thinking is time-consuming, it's not a great experience if you want simplicity
            -- system_prompt = "You are a helpful assistant.",
            -- append_system_prompt = "Always respond concisely.",
            context = {
              max_bytes = 24000,
              ask = {
                surrounding_lines = 80,
              },
              selection = {
                surrounding_lines = 40,
              },
              diagnostics = {
                enabled = false,
              },
            },
            skills = true,
            extensions = true,
        },
        config = function(_, opts)
            require("pi").setup(opts)
            vim.keymap.set("n", "<leader>ai", ":PiAsk<CR>", { desc = "Ask pi" })
            vim.keymap.set("v", "<leader>ai", ":PiAskSelection<CR>", { desc = "Ask pi (selection)" })
        end,
    },
    -- {
    --     "heavysudo/pi-neovim-plugin",
    --     opts = {
    --         -- Pi command and arguments
    --         pi_cmd = { "pi", "--mode", "rpc", "--no-session" },

    --         -- Context gathering options
    --         context = {
    --           -- How many lines around the cursor to send for autocomplete? (0 for whole buffer)
    --           lines_around_cursor = 0,
    --           -- Maximum buffer size to send (in bytes), 0 for no limit
    --           max_buffer_size = 0,
    --         },

    --         -- Autocomplete options
    --         autocomplete = {
    --           -- Enable autocomplete source
    --           enabled = true,
    --           -- Filetypes to enable autocomplete for (empty for all)
    --           filetypes = {},
    --           -- Minimum trigger length (characters) before requesting completion
    --           trigger_length = 2,
    --         },

    --         -- Keybindings (optional)
    --         keymaps = {
    --           { "n", "<leader>pp", "<cmd>PiPrompt<cr>", desc = "Pi Prompt" },
    --         },

    --         -- UI options
    --         ui = {
    --           float = { border = "rounded", max_width = 100, max_height = 30 },
    --           streaming = true,
    --         },

    --         -- Request behavior
    --         request = {
    --           timeout = 30000,
    --           retry = 1,
    --         },

    --         -- Logging
    --         log_level = "info",
    --     },
    --     config = function(_, opts)
    --         require("pi_neovim").setup(opts)
    --     end,
    -- },
}
