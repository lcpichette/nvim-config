-- https://github.com/stevearc/conform.nvim/tree/master/lua/conform/formatters
require("conform").setup {
  formatters_by_ft = {
    bash = { "beautysh" },
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    css = { "stylelint" },
    angular = { "prettier" },
    scss = { "stylelint" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    html = { "prettier", "htmlbeautifier" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  },
}
