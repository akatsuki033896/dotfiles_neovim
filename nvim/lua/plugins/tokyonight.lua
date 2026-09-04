return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            -- transparent = true,
            styles = {
                comments = { italic = true },
                keywords = { bold = true },
                -- sidebars = "transparent",
                -- floats = "transparent",
            },
            integrations = {
                nvimtree = {
                    enable = true,
                    show_root = false,
                    transparent_panel = false,
                }
            },
        }
    },
}
