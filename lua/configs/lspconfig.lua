-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Configuração para o servidor de linguagem Lua
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'}, -- Remover "vim" se você não quiser diagnósticos para a variável global "vim"
      },
    },
  },
}

-- lspconfig.harper_ls.setup {
--   settings = {
--     ["harper-ls"] = {
--       languages = { "html", "css", "javascript"},
--       linters = {
--         spell_check = false,
--         spelled_numbers = false,
--         an_a = true,
--         sentence_capitalization = true,
--         unclosed_quotes = true,
--         wrong_quotes = true,
--         long_sentences = true,
--         repeated_words = true,
--         spaces = true,
--         matcher = true,
--         correct_number_suffix = true,
--         number_suffix_capitalization = true,
--         multiple_sequential_pronouns = true,
--         linking_verbs = false,
--         avoid_curses = true,
--         terminating_conjunctions = true
--       }
--     }
--   },
-- }




-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
