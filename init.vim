
"
"
"  _                    _   _                 _
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : init.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

"===
"=== environment variables
"===
let $NVIM_CONF_PATH = "$HOME/.config/nvim"

"===
"=== machine_specific.vim
"===
source $NVIM_CONF_PATH/_machine_specific.vim

"===
"=== basic.vim
"===
source $NVIM_CONF_PATH/basic.vim

"===
"=== function.vim
"===
source $NVIM_CONF_PATH/function.vim

"===
"=== plugs.vim
"===
source $NVIM_CONF_PATH/plug/plugs.vim

"===
"=== plugs_settings.vim
"===
source $NVIM_CONF_PATH/plug_config/plugs_settings.vim
