require("plugins")

-- local lspconfig = require("lspconfig")
-- local lspconfig = vim.lsp.config

require("mason-lspconfig").setup({
    ensured_installed = {},
    automatic_installation = true,
})

vim.lsp.enable('bashls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')

-- lspconfig.lua_ls.setup {}
-- lspconfig.clangd.setup {}
-- lspconfig.rust_analyzer.setup {}
-- lspconfig.gopls.setup {}
-- lspconfig.pyright.setup {}
-- lspconfig.yamlls.setup {}
-- lspconfig.bashls.setup {}
-- lspconfig.cmake.setup {}
