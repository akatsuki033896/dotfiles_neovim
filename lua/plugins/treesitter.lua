return { {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local ts = require("nvim-treesitter")
        ts.setup()
        ts.install({ "c", "cpp", "lua", "python", "cmake", "bash", "json", "xml", "markdown" })
        -- 打开对应类型的文件时启动 Treesitter
        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "c", "cpp", "lua", "python", "cmake", "sh", "json", "xml", "markdown" },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
} }
