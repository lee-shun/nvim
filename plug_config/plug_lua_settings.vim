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

-- galaxyline
require('statusline.fulline')

-- nvimtree
--require('nvimtree')

-- change rooter
--require("lsp-rooter").setup{}

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

-- comment
require('nvim_comment').setup()

-- autopairs
require('nvim-autopairs').setup()

-- number color
require("colorizer").setup()

-- shade
-- require("shade").setup()

-- Neovim-lsp
-- require("lsp.lv-lspconfig")
-- require("lsp.lv-color")
-- -- require("lsp.lv-completion")
-- require("lsp.lv-compe")
-- require("lsp.lv-lspkind")
-- require('spellsitter').setup()

EOF
