return { {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    cmd = { "NvimTreeOpen", "NvimTreeToggle", "NvimTreeFindFile" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
        -- Disable netrw at the very start
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Enable 24-bit color
        vim.opt.termguicolors = true
    end,
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive"
            },
            view = {
                width = 30
            },
            renderer = {
                group_empty = true
            },
            filters = {
                dotfiles = false, -- '.'开头文件默认不显示 关闭功能
            },
            actions = {
                open_file = {
                    resize_window = true,
                    quit_on_open = true
                },
            }
        })
    end
} }
