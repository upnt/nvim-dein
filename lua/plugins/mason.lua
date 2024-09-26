-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        -- lua
        "lua_ls",
        -- shell
        "bashls",
        -- latex
        "texlab",
        -- cpp
        "clangd",
        -- json
        "jsonls",
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
        -- lua
        "stylua",
        -- shell
        "beautysh",
        "shellcheck",
        -- latex
        "latexindent",
        "bibtex-tidy",
        -- cpp
        "cpplint",
        "clang-format",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        -- bash
        "bash-debug-adapter",
        -- cpp
        "cpptools",
        -- add more arguments for adding more debuggers
      },
    },
  },
}
