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


"*****************************************插件安装区*********************************************

call plug#begin('~/.config/nvim/plugged')

"外观美化

"Plug 'liuchengxu/eleline.vim'
Plug 'mg979/vim-xtabline'
"Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
"Plug 'bling/vim-bufferline'
Plug 'junegunn/goyo.vim'

" 普通高亮
Plug 'jaxbot/semantic-highlight.vim'
"Plug 'norcalli/nvim-colorizer.lua'

"文件目录
"Plug 'preservim/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

"VIM C++相关
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jackguo380/vim-lsp-cxx-highlight'
"Plug 'LucHermitte/VimFold4C'

"git相关
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore'

"彩虹括号
Plug 'luochen1990/rainbow'

"LATEX相关
Plug 'lervag/vimtex'

"markdown 相关
Plug 'plasticboy/vim-markdown'
Plug 'dkarter/bullets.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }

"自动补全插件平台coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"自动补全插件YCM
"Plug 'ycm-core/YouCompleteMe'

"代码片段
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"文件寻找
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

"剪切板历史
Plug 'junegunn/vim-peekaboo'

"包围改变
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`

"强化删除
Plug 'junegunn/vim-after-object' " da= to delete what's after =

"自动注释
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line

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

"光标所在单词下划线
Plug 'itchyny/vim-cursorword'

"多重光标
" Plug 'terryma/vim-multiple-cursors'

"强化书签
Plug 'MattesGroeger/vim-bookmarks'

"查找替换`
Plug 'brooth/far.vim'

"对齐，排版
Plug 'godlygeek/tabular'

"浮动窗体
Plug 'voldikss/vim-floaterm'

call plug#end()
