"**********************************************************************************************************
"
"
"  _                    _   _                 _
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plugs_complete_settings.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

"===
"=== coc.nvim
"===
" source ~/.config/nvim/plug_config/plug_coc_settings.vim

"===
"=== ncm2
"===
" source ~/.config/nvim/plug_config/plug_ncm2_settings.vim

"===
"===sinps
"===
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/Ultisnips/', '~/.config/nvim/plugged/vim-snippets/UltiSnips/']
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = ['~/.config/nvim/Ultisnips/']



"===
"=== Neovim-lsp
"===
lua<<EOF
require("lsp.lv-lspconfig")
require("lsp.lv-color")
-- require("lsp.lv-completion")
require("lsp.lv-compe")
require("lsp.lv-lspkind")
require('spellsitter').setup()
EOF
