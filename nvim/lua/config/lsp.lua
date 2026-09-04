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

vim.lsp.enable('lua_ls')
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('neocmake')

-- ui
vim.diagnostic.config({
    --右侧显示文字
    virtual_text = true,
    --左侧图标
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.INFO] = " ",
            [vim.diagnostic.severity.HINT] = " ",
        },
    },
    update_in_insert = true,
})

-- -- Floating window border
-- vim.o.winborder = "single"
--
-- -- Diagnostic floating window
-- vim.diagnostic.config({
--     float = {
--         border = "single",
--     },
-- })
