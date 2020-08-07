"**********************************************************************************************************
"
"
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plug_general_enhance.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

" 普通高亮
Plug 'jaxbot/semantic-highlight.vim'
"Plug 'norcalli/nvim-colorizer.lua'

"彩虹括号
Plug 'luochen1990/rainbow'

"剪切板历史
Plug 'junegunn/vim-peekaboo'

"包围改变
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`

"强化删除
Plug 'junegunn/vim-after-object' " da= to delete what's after =

"自动注释
Plug 'tpope/vim-commentary'
"Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line

"bool型翻转
Plug 'AndrewRadev/switch.vim' " gs to switch

"函数列表" Taglist
Plug 'liuchengxu/vista.vim'

"输入法自动切换
"Plug 'lilydjwg/fcitx.vim'
Plug 'rlue/vim-barbaric' " slowing down vim-multiple-cursors

"英语书写加强
Plug 'reedes/vim-wordy'
Plug 'ron89/thesaurus_query.vim'

"缩进显示
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'

"光标所在单词下划线
Plug 'itchyny/vim-cursorword'

"多重光标
"Plug 'terryma/vim-multiple-cursors'

"对齐，排版
Plug 'godlygeek/tabular'

"浮动窗体
Plug 'voldikss/vim-floaterm'

"强化书签
Plug 'MattesGroeger/vim-bookmarks'

"查找替换`
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'brooth/far.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

"文件目录
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore'
