"***********************************************************************************************************************
"       ___       ___           ___           ___                    ___           ___                       ___
"      /\__\     /\  \         /\  \         /\  \                  /\__\         /\__\          ___        /\__\
"     /:/  /    /::\  \       /::\  \       /::\  \                /::|  |       /:/  /         /\  \      /::|  |
"    /:/  /    /:/\:\  \     /:/\:\  \     /:/\ \  \              /:|:|  |      /:/  /          \:\  \    /:|:|  |
"   /:/  /    /::\~\:\  \   /::\~\:\  \   _\:\~\ \  \            /:/|:|  |__   /:/__/  ___      /::\__\  /:/|:|__|__
"  /:/__/    /:/\:\ \:\__\ /:/\:\ \:\__\ /\ \:\ \ \__\          /:/ |:| /\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\
"  \:\  \    \:\~\:\ \/__/ \:\~\:\ \/__/ \:\ \:\ \/__/          \/__|:|/:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /
"   \:\  \    \:\ \:\__\    \:\ \:\__\    \:\ \:\__\                |:/:/  /   |:|__/:/  /  \::/__/           /:/  /
"    \:\  \    \:\ \/__/     \:\ \/__/     \:\/:/  /                |::/  /     \::::/__/    \:\__\          /:/  /
"     \:\__\    \:\__\        \:\__\        \::/  /                 /:/  /       ~~~~         \/__/         /:/  /
"      \/__/     \/__/         \/__/         \/__/                  \/__/                                   \/__/
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"***********************************************************************************************************************

lua<<EOF

-- colorscheme
-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)
require('highlights')

-- galaxyline
require('statusline.fulline')

-- nvimtree
-- require('nvimtree')

-- dashboard
require('dashboard')

-- gitsign
require('gitsigns').setup()

-- treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
  }
}

-- todo
require('todo-comments').setup()

-- comment
require('nvim_comment').setup()

-- autopairs
require('nvim-autopairs').setup()

-- number color
require("colorizer").setup()

-- shade
-- require("shade").setup()

-- telescope
require('scope')

-- Neovim-lsp
-- require("lsp.lsp-lspconfig")
-- require("lsp.lsp-color")
-- -- require("lsp.lsp-completion")
-- require("lsp.lsp-compe")
-- require("lsp.lsp-lspkind")
-- require('spellsitter').setup()

-- change rooter
-- require("lsp-rooter").setup{}

-- true zen
require('zenmode')

EOF
