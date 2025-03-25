local null_ls = require("null-ls")

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua, -- Se você usa Stylua para formatação
    null_ls.builtins.diagnostics.eslint_d, -- Se você usa ESLint para diagnóstico
  },
}
