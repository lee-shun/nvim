"**********************************************************************************************************
"
"
"  _                    _   _                 _
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plug_lua_settings.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

lua<<EOF

-- colorscheme
-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)
require('highlights')

-- galaxyline
require('statusline.fulline')

-- nvimtree
-- require('nvimtree')

-- change rooter
-- require("lsp-rooter").setup{}

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

EOF
