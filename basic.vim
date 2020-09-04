"**************************************************************************************************
"
"
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : basic.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**************************************************************************************************


"**************************************交换文件设置区**********************************************

"****************************************基本设置区************************************************

let g:mapleader = ' '
filetype on
filetype plugin on
set autochdir "自动切换工作目录

"****************************************基本设置区************************************************
"编码设置
set encoding=UTF-8

"显示设置
syntax on             " 设置高亮
set scrolloff=5       " 设置滚动余量
"set mouse=a           " 打开鼠标
set number            " 打开行号
set relativenumber    " 相对行号
set cursorline        " 打开光标提示线
set cursorcolumn      " 打开光标提示线
set noshowmode        " 不要显示模式
set nowrap            " 显示行折叠
set linebreak         " 不在单词内部折行
set ttimeoutlen=0     " 单字符命令等待时间
set wildmenu          " vim命令自动补全
set foldmethod=manual " 语法折叠
set nofoldenable      " 开始关闭语法折叠
set t_Co=256          " 256颜色
set termguicolors     " 使用gui，不和终端混合
set ttyfast           " should make scrolling faster
set lazyredraw        " same as above
set visualbell

"搜索设置
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap <C-h> :set nohlsearch!<CR>

"缩进设置
filetype indent on
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"显示非可见字符
set list
set listchars=tab:\|\ ,trail:▫

"共享设置
set clipboard=unnamedplus

"设置拼写检查
noremap <LEADER>sc :set spell!<CR>

"设置插入模式下自动提示
inoremap <C-x> <C-x>s

"************************************自动刷新vimrc*************************************************

"autocmd BufWritePost $MYVIMRC source $MYVIMRC

"***********************************宏快捷键*******************************************************

noremap <LEADER>= @a

"**************************************键盘映射区**************************************************

noremap M J "合并行
noremap S :w<CR>
noremap Q :q<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

"**************************************共享剪切板**************************************************

"共享剪切板
"vnoremap <Leader>y "+y
"vnoremap <Leader>yy "+yy
"nmap <Leader>p "+p

"**************************************行号设置**************************************************

nnoremap <F2> :set relativenumber! number!<CR>

"**************************************分屏设置区**************************************************
set splitright
set splitbelow
noremap <LEADER>sv :set splitright<CR>:vsplit<CR>
noremap <LEADER>sl :split<CR>
noremap <LEADER>l <C-w>l
noremap <LEADER>h <C-w>h
noremap <LEADER>j <C-w>j
noremap <LEADER>k <C-w>k
noremap <LEADER>w <C-w>w

nnoremap <up> :res +5<CR>
nnoremap <down> :res -5<CR>
nnoremap <left> :vertical resize-5<CR>
nnoremap <right> :vertical resize+5<CR>

"**************************************ctrl-alt工作区冲突******************************************

nnoremap <C-A-up> <nop>
nnoremap <C-A-down> <nop>
nnoremap <C-A-left> <nop>
nnoremap <C-A-right> <nop>
inoremap <C-A-up> <nop>
inoremap <C-A-down> <nop>
inoremap <C-A-left> <nop>
inoremap <C-A-right> <nop>

"**************************************标签设置区**************************************************

noremap te :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>

"**************************************Buffer设置区************************************************

noremap <LEADER>bn :bn<CR>
noremap <LEADER>bp :bp<CR>
noremap <LEADER>bd :bd<CR>

noremap <LEADER>b1 :buffer 1<CR>
noremap <LEADER>b2 :buffer 2<CR>
noremap <LEADER>b3 :buffer 3<CR>
noremap <LEADER>b4 :buffer 4<CR>
noremap <LEADER>b5 :buffer 5<CR>
noremap <LEADER>b6 :buffer 6<CR>
noremap <LEADER>b7 :buffer 7<CR>
noremap <LEADER>b8 :buffer 8<CR>
noremap <LEADER>b9 :buffer 9<CR>
"**************************************文件关闭光标记忆********************************************

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"****************************************外部程序启动**********************************************

" Open up lazygit
noremap <c-g>  :term lazygit<CR>

"************************************双击查找下一个占位符******************************************

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"************************************C++单行注释方式改变******************************************

noremap <LEADER>c <Esc>k^/\/\/<CR>d2lv$hdA/**/<Esc>hP$:set nohlsearch<CR>

"****************************************快速移动行************************************************

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

"****************************************快速添加空行**********************************************

nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>


"****************************************存储历史记录**************************************************
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
