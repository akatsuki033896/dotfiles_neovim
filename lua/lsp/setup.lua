require("plugins")

require("mason-lspconfig").setup({
    ensured_installed = {},
    automatic_installation = true,
})

local lsp_configs = {
    lua_ls = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
                workspace = {
                    library = {
                        vim.fn.expand("$VIMRUNTIME/lua"),
                        vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
                    },
                },
                hint = { enable = true },
            },
        },
    },
    clangd = {
        cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--completion-style=detailed",
            "--pch-storage=memory",
            "--all-scopes-completion",
            "--cross-file-rename",
            "--header-insertion=never",
            "--log=error",
        },
        init_options = {
            clangdFileStatus = true,
        },
    },
}

for server_name, config in pairs(lsp_configs) do
    vim.lsp.config(server_name, config)
end

vim.lsp.enable('bashls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('neocmake')
