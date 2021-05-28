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


"===
"=== basic lib
"===
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
"

" 普通高亮
" Plug 'jaxbot/semantic-highlight.vim'
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Plug 'RRethy/vim-illuminate'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvim-treesitter/playground'

"彩虹括号
" Plug 'luochen1990/rainbow'
Plug 'p00f/nvim-ts-rainbow'

"平滑翻页
Plug 'psliwka/vim-smoothie'

"自动括号
" Plug 'jiangmiao/auto-pairs'
" Plug 'Raimondi/delimitMate'
Plug 'windwp/nvim-autopairs'

"剪切板历史
" Plug 'junegunn/vim-peekaboo'

"包围改变
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`

"包围选中
Plug 'gcmt/wildfire.vim'

"强化删除
Plug 'junegunn/vim-after-object' " da= to delete what's after =

"自动注释
" Plug 'tpope/vim-commentary'
"Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
Plug 'terrortylor/nvim-comment'

"bool型翻转
Plug 'AndrewRadev/switch.vim' " gs to switch

"函数列表" Taglist
Plug 'liuchengxu/vista.vim'

"输入法自动切换
"Plug 'lilydjwg/fcitx.vim'
Plug 'rlue/vim-barbaric' " slowing down vim-multiple-cursors

"英语书写加强
" Plug 'reedes/vim-wordy'
" Plug 'ron89/thesaurus_query.vim'

"缩进显示
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'

"光标所在单词下划线
" Plug 'itchyny/vim-cursorword'
Plug 'yamatsum/nvim-cursorline'

"多重光标
"Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi'

"对齐，排版
Plug 'godlygeek/tabular'

"对齐，排版
Plug 'junegunn/vim-easy-align'

"浮动窗体
" Plug 'voldikss/vim-floaterm'

"强化书签
" Plug 'MattesGroeger/vim-bookmarks'

"查找替换`
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'brooth/far.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'nvim-telescope/telescope.nvim'

"文件目录
" if has('nvim')
  " Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/defx.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" Plug 'kristijanhusak/defx-git'
" Plug 'kristijanhusak/defx-icons'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'ahmedkhalf/lsp-rooter.nvim'
Plug 'kevinhwang91/rnvimr'

"git
Plug 'rhysd/conflict-marker.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
" Plug 'gisphm/vim-gitignore'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

"undotree
Plug 'mbbill/undotree'

"todo 管理
" Plug 'Dimercel/todo-vim'
Plug 'folke/todo-comments.nvim'

"calender
" Plug 'itchyny/calendar.vim'

"自动折叠
" Plug 'wellle/context.vim'

"强化折叠
" Plug 'pseewald/vim-anyfold'

"折叠加速
" Plug 'Konfekt/FastFold'
"
"改变折叠样式
Plug 'lambdalisue/readablefold.vim'

"替换
" Plug 'svermeulen/vim-subversive'

" Plug 'theniceboy/argtextobj.vim'

"f F命令
Plug 'rhysd/clever-f.vim'

"单独编辑
" Plug 'chrisbra/NrrwRgn'

"emoji
" Plug 'AndrewRadev/splitjoin.vim'

"block moving with 'Shift+Ctrl--hjkl'
Plug 'matze/vim-move'

"行号切换
" Plug 'jeffkreeftmeijer/vim-numbertoggle'

"注意集中
" Plug 'sunjon/shade.nvim'
