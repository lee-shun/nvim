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
source $NVIM_CONF_PATH/plug_config/plug_coc_settings.vim

"===
"=== ncm2
"===
" source $NVIM_CONF_PATH/plug_config/plug_ncm2_settings.vim

"===
"===sinps
"===
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"
let g:UltiSnipsSnippetDirectories = [$NVIM_CONF_PATH . '/Ultisnips/', $NVIM_CONF_PATH . '/plugged/vim-snippets/UltiSnips/']
