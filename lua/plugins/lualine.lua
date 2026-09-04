local function GetLSP()
    local clients = vim.lsp.get_clients({ bufnr = 0 })

    if #clients == 0 then
        return "No Active Lsp"
    end

    return table.concat(
        vim.tbl_map(function(client)
            return client.name
        end, clients),
        ", "
    )
end

return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' }
                    --  https://github.com/ryanoasis/powerline-extra-symbols
                },
                --根据不同窗口显示
                extensions = { "nvim-tree", "toggleterm", "trouble", "lazy" },
                sections = {
                    lualine_a = {
                        { "Symbol" },
                        'mode'
                    },
                    lualine_b = {
                        'diagnostics',
                        { 'filename', color = { gui = 'italic' } },
                    },
                    lualine_c = {
                        { GetLSP, icon = ' LSP:', color = { fg = '#ffffff', gui = 'italic' } }, -- Display LSP status
                        -- { Text, color = { fg = '#ffffff', gui = 'italic' } }, -- Display a custom text
                    },
                    lualine_x = {
                        "filesize",
                        -- {
                        --     "fileformat",
                        --     symbols = {
                        --         unix = ' ',
                        --         dos = ' ',
                        --     },
                        -- },
                        { "encoding", color = { fg = '#ffffff', gui = 'italic' } },
                        { "filetype", color = { fg = '#ffffff', gui = 'italic' } },
                    }
                }
            })
        end
    }
}
