"**********************************************************************************************************
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


""===
""=== Auto load for first time uses
""===
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
"	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
"				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif


"===
"=== Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
"===
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!touch ~/.config/nvim/_machine_specific.vim"
endif


"===
"=== machine_specific.vim
"===
source ~/.config/nvim/_machine_specific.vim

"===
"=== pure_vim.vim
"===
"source ~/.config/nvim/pure_vim.vim
"source ~/.config/nvim/pure_plugs.vim

"===
"=== basic.vim
"===
source ~/.config/nvim/basic.vim

"===
"=== plugs.vim
"===
source ~/.config/nvim/plugs.vim

"===
"=== plugs_settings.vim
"===
source ~/.config/nvim/plugs_settings.vim
