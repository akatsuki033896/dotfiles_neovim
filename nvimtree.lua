require("plugins")

local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("nvim-tree not found!")
    return
end


local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup({

    git = {
        enable = false,
    },
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = false,
        custom = { 'node_modules' },
    },
    view = {

        width = 30,
        side = 'left',

        number = false,
        relativenumber = false,

        signcolumn = 'yes',
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = true,
        },
    },
})

vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

vim.cmd [[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
