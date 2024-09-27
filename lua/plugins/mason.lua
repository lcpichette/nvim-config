-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- "angularls",
        -- "bashls",
        -- "biome",
        -- "css_variables",
        -- "html",
        -- "jsonls",
        -- "lua_ls",
        -- "quick_lint_js",
        -- "somesass_ls",
        -- "ts_ls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        -- "beautysh", --bash
        -- "biome", --faster than prettier,works w/ prettier config
        -- "cbfmt", --markdown
        -- "commitlint", --github commit guidelines
        -- "eslint_d", --faster than eslint
        -- "fixjson", --json
        -- "fourmolu", --haskell
        -- "hlint", --html
        -- "htmlhint", --html
        -- "jsonlint", --json
        -- "oxlint", --js,ts
        -- "prettierd", --js,ts,angular
        -- "quick_lint_js", --js
        -- "stylelint", --css,scss
        -- "stylua", --lua
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        -- "python",
        -- "bash-debug-adapter",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
