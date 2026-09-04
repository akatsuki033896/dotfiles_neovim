require("config.keybindings")
require("config.basic")
require("config.lazy")
require("config.lsp")
require("config.autocmd")

require("plugins.treesitter") -- 语法高亮
require("plugins.tree") -- 文件树
require("plugins.gitsigns") -- git提示
require("plugins.autopairs")
require("plugins.mason")
require("plugins.cmp")
require("plugins.ibl")
require("plugins.luasnip")

vim.cmd[[colorscheme tokyonight-night]]
