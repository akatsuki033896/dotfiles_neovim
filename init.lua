require("plugins")
require("basic")
require("keybindings")
require("autocmd")

require("lsp.cmp")
require("lsp.setup")
require("lsp.ui")

require("plugin-config.autopairs")
require("plugin-config.toggleterm")
require("plugin-config.lualine")
require("plugin-config.nvimtree")
require("plugin-config.bufferline")
require("plugin-config.dashboard")
require("plugin-config.cmake-tools")

if vim.fn.has('nvim-0.11') == 0 then
    error("nvim-lspconfig 0.11+ requires neovim 0.11.3+")
end

vim.cmd[[colorscheme tokyonight-night]]
vim.cmd[[TransparentEnable]]
