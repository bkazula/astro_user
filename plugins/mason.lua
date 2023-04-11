-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "cssls",
        "eslint",
        "gopls",
        "html",
        "jsonls",
        "tsserver",
        "marksman",
        "pyright",
        "sqlls",
        "svelte",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "python", "node2" },
    },
  },
}
