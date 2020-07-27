"**********************************************************************************************************
"
"
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : pure_plugs.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************


call plug#begin('~/.config/nvim/plugged')

"外观美化
Plug 'liuchengxu/eleline.vim'
Plug 'mg979/vim-xtabline'
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'

" 普通高亮
Plug 'jaxbot/semantic-highlight.vim'

" 文件目录
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"彩虹括号
Plug 'luochen1990/rainbow'

"包围改变
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`

"python
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-python/python-syntax', { 'for' :['python', 'vim-plug'] }
call plug#end()

"===
"=== Color
"===
set background=dark
colorscheme deus
let g:deus_termcolors=256

"===
"=== Xtabeline
"===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
"noremap to :XTabCycleMode<CR>
"noremap \p :XTabInfo<CR>

"===
"=== eleline
"===
let g:eleline_powerline_fonts = 1

"===
"=== Rainbow
"===
let g:rainbow_active = 1

"===
"=== NERDTree
"===
noremap tt :NERDTreeToggle<CR>

"===
"=== NERDTree-git
"===
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0
