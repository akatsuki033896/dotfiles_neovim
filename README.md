![2026-01-10 14.30.20.png](https://s2.loli.net/2026/01/10/4d17pjSZFbQfmL9.png)

# dotfiles_neovim
Neovim config for self development
- Neovim >= 0.9.5
- [Nerd Font](https://www.nerdfonts.com/)
- [Warp Terminal](https://warp.dev/)

## Startup
```sh
cd ~/.config
git clone https://github.com/akatsuki033896/dotfiles_neovim.git
mv dotfiles_nvim nvim
```

## Plugins
### Plugin Manager
[folke/lazy.nvim](https://github.com/folke/lazy.nvim)
### Colorscheme 
[daltonmenezes/aura-theme](https://github.com/daltonmenezes/aura-theme)

[github-nvim-theme](https://github.com/projekt0n/github-nvim-theme)

[bluz71/vim-nightfly-colors](https://github.com/bluz71/vim-nightfly-colors)

[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

### Lsp / Auto Completion
[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)

[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)

[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)

[mason.nvim](https://github.com/williamboman/mason.nvim)

### UI

[akinsho/bufferline](https://github.com/akinsho/bufferline.nvim)

[nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)

[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

[folke/noice.nvim](https://github.com/folke/noice.nvim)

[nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)

[xiyaowong/transparent.nvim](https://github.com/xiyaowong/transparent.nvim)

### Other Tools

[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)

[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)

[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

[akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

## Keymap
`<leader>` = `space`
### Normal Mode

| Key          | Effect                                       |
| ------------ | -------------------------------------------- |
| `sv`         | split window right side                      |
| `sh`         | split window down side                       |
| `<A-h>`      | switch to left window                        |
| `<A-l>`      | switch to right window                       |
| `<A-k>`      | switch to upside window                      |
| `<A-j>`      | switch to downside widow                     |
| `<C-z>`      | revoke                                       |
| `<C-u>`      | scroll up                                    |
| `<C-d>`      | scroll down                                  |
| `q`          | quit                                         |
| `<C-k>`      | Lspsaga hover_doc                            |
| `<C-g>`      | Lspsaga finder                               |
| `<C-a>`      | Lspsaga code_action                          |
| `<A-d>`      | Lspsaga peek_definition (jump to definition) |
| `<A-m>`      | open/close nvim-tree                         |
| `a`          | create files in nvim-tree                    |
| `d`          | delete files in nvim-tree                    |
| `r`          | rename files in nvim-tree                    |
| `x`          | cut files in nvim-tree                       |
| `c`          | copy files in nvim-tree                      |
| `p`          | paste files in nvim-tree                     |
| `s`          | open files (in system) in nvim-tree          |
| `<C-h>`      | switch to previous buffer                    |
| `<C-l>`      | switch to next buffer                        |
| `<C-w>`      | delete buffer                                |
| `<leader>ta` | open floating terminal                       |
| `<leader>tb` | open terminal rightside                      |
| `<leader>tc` | open terminal downside                       |
| `<C-p>`      | find files                                   |
| `<C-f>`      | recent files (live_grep)                     |
| `<F1>`       | startup page (Dashboard)                     |
| `<F2>`       | install LSP / Formatter (Mason)              |
| `<F3>`       | check LSP information                        |
### Visual Mode

| Key     | Effect               |
| ------- | -------------------- |
| `<C-c>` | Copy                 |
| `<C-v>` | Paste                |
| `<`     | Indentation -4 space |
| `>`     | Indenfation +4 space |
| `gc`    | Comment code block   |

### Insert Mode

| Key     | Effect                         |
| ------- | ------------------------------ |
| `<C-h>` | jump to line's first character |
| `<C-l>` | jump to line's last character  |
| `<A-.>` | open completion window         |
| `<A-,>` | close completion window        |
| `<C-k>` | next completion                |
| `<C-j>` | previous completion            |
| `<CR>`  | confirm completion             |

