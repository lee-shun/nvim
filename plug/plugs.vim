"**********************************************************************************************************
"
"
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plugs.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************


call plug#begin('~/.config/nvim/plugged')

"VIM外观美化
source ~/.config/nvim/plug/plug_beauty.vim

"基本输入提升
source ~/.config/nvim/plug/plug_general_enhance.vim

"自动补全
source ~/.config/nvim/plug/plug_complete.vim

"各类语言支持
source ~/.config/nvim/plug/plug_languages.vim

call plug#end()
