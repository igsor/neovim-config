-- agentic coding (chat)

-- config for "pablopunk/pi.nvim"
require("pi").setup({
  binary = "/home/matthias/.local/share/pi-node/current/bin/pi",
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
})


-- -- Ask pi with the current buffer as context
-- vim.keymap.set("n", "<leader>ai", ":PiAsk<CR>", { desc = "Ask pi" })

-- -- Ask pi with visual selection as context
-- vim.keymap.set("v", "<leader>ai", ":PiAskSelection<CR>", { desc = "Ask pi (selection)" })



-- config for "ggml-org/llama.vim"
function update_llama_config()
  local llama_config = vim.g.llama_config
  llama_config.show_info = 0
  -- llama_config.auto_fim = true
  -- llama_config.enable_at_startup = true
  -- llama_config.endpoint_fim = "http://127.0.0.1:12345/infill"
  -- llama_config.endpoint_inst = "http://127.0.0.1:12345/v1/chat/completions"
  -- llama_config.model_fim = "ggml-org/Qwen2.5-Coder-1.5B-Q8_0-GGUF"
  -- llama_config.model_inst = "Q8_0"
  vim.g.llama_config = llama_config
end

-- r of models in cache: 5
--    1. ggml-org/gemma-3-4b-it-qat-GGUF:Q4_0
--    2. ggml-org/Qwen3.5-0.8B-GGUF:Q8_0
--    3. ggml-org/Qwen2.5-Coder-3B-Q8_0-GGUF:Q8_0
--    4. ggml-org/gemma-3-270m-it-qat-GGUF:Q4_0
--    5. ggml-org/Qwen2.5-Coder-1.5B-Q8_0-GGUF:Q8_0
-- (reverse-i-search)`--fi': llama server --fim-qwen-1.5b-default

update_llama_config()

-- all config values:
-- vim.g.llama_config = {
--   api_key = "",
--   auto_fim = true,
--   enable_at_startup = true,
--   endpoint_fim = "http://127.0.0.1:8012/infill",
--   endpoint_inst = "http://127.0.0.1:8012/v1/chat/completions",
--   info_compact = 3,
--   keymap_debug_toggle = "<leader>lld",
--   keymap_fim_accept_full = "<Tab>",
--   keymap_fim_accept_line = "<S-Tab>",
--   keymap_fim_accept_word = "<leader>ll]",
--   keymap_fim_next = "<C-J>",
--   keymap_fim_prev = "<C-K>",
--   keymap_fim_trigger = "<leader>llf",
--   keymap_inst_accept = "<Tab>",
--   keymap_inst_cancel = "<Esc>",
--   keymap_inst_continue = "<leader>llc",
--   keymap_inst_rerun = "<leader>llr",
--   keymap_inst_trigger = "<leader>lli",
--   max_cache_keys = 250,
--   max_line_suffix = 8,
--   model_fim = "",
--   model_inst = "",
--   n_cmpl = 1,
--   n_predict = 128,
--   n_prefix = 256,
--   n_suffix = 64,
--   profile = "",
--   profiles = {},
--   ring_chunk_size = 64,
--   ring_n_chunks = 16,
--   ring_scope = 1024,
--   ring_update_ms = 1000,
--   show_info = 0,
--   stop_strings_fim = {},
--   stop_strings_inst = {},
--   t_max_predict_ms = 1000,
--   t_max_prompt_ms = 500
-- }
--
--
-- config for "georg3tom/llama.nvim"
-- require('llama').setup({
--     endpoint = '127.0.0.1:8012/infill',  -- LLM server endpoint
--     api_key = '',                               -- Optional API key
--     n_prefix = 256,                             -- Lines of context before cursor
--     n_suffix = 64,                              -- Lines of context after cursor
--     n_predict = 128,                            -- Maximum tokens to predict
--     stop_strings = {},                          -- Strings that stop generation when encountered
--     auto_fim = true,                            -- Auto-trigger completion
--     max_cache_keys = 250,                       -- Size of the cache
--     keymap_trigger = '<C-F>',                   -- Trigger completion keymap
--     keymap_accept_full = '<Tab>',               -- Accept full completion
--     keymap_accept_line = '<S-Tab>',             -- Accept line completion
--     keymap_accept_word = '<C-B>'                -- Accept word completion
-- })
--


-- config for "heavysudo/pi-neovim-plugin",
-- require("pi_neovim").setup({
--   -- Pi command and arguments
--   pi_cmd = { "pi", "--mode", "rpc", "--no-session" },

--   -- Context gathering options
--   context = {
--     -- How many lines around the cursor to send for autocomplete? (0 for whole buffer)
--     lines_around_cursor = 0,
--     -- Maximum buffer size to send (in bytes), 0 for no limit
--     max_buffer_size = 0,
--   },

--   -- Autocomplete options
--   autocomplete = {
--     -- Enable autocomplete source
--     enabled = true,
--     -- Filetypes to enable autocomplete for (empty for all)
--     filetypes = {},
--     -- Minimum trigger length (characters) before requesting completion
--     trigger_length = 2,
--   },

--   -- Keybindings (optional)
--   keymaps = {
--     { "n", "<leader>pp", "<cmd>PiPrompt<cr>", desc = "Pi Prompt" },
--   },

--   -- UI options
--   ui = {
--     float = { border = "rounded", max_width = 100, max_height = 30 },
--     streaming = true,
--   },

--   -- Request behavior
--   request = {
--     timeout = 30000,
--     retry = 1,
--   },

--   -- Logging
--   log_level = "info",
-- })
