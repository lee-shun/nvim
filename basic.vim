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

"****************************************基本设置区************************************************

let g:mapleader = ' '
set autochdir "自动切换工作目录
filetype plugin indent on

"****************************************基本设置区************************************************
"编码设置
set encoding=UTF-8

"显示设置
set scrolloff=5       " 设置滚动余量
set number            " 打开行号
set relativenumber    " 相对行号
set cursorline        " 打开光标提示线
set cursorcolumn      " 打开光标提示线
set colorcolumn=121   " 设置80列提示
set noshowmode        " 不要显示模式
set nowrap            " 显示行折叠
set linebreak         " 不在单词内部折行
set ttimeoutlen=0     " 单字符命令等待时间
set wildmenu          " vim命令自动补全
set lazyredraw        " same as above
set visualbell
set ttyfast           " should make scrolling faster
set t_Co=256          " 256颜色
set termguicolors     " 使用gui，不和终端混合

"搜索设置
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

"缩进与折叠
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set foldmethod=manual " 手动折叠
set foldlevel=99      " 折叠文件打开展开
set foldenable

"显示非可见字符
set list
set listchars=tab:\•\ ,trail:▫
let &showbreak='↳'

"共享设置
set clipboard=unnamedplus
"共享剪切板
"vnoremap <Leader>y "+y
"vnoremap <Leader>yy "+yy
"nmap <Leader>p "+p

"**************************************行号设置**************************************************

nnoremap <F2> :set relativenumber! number!<CR>

"**************************************分屏设置区**************************************************

set splitright
set splitbelow

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

"**************************************编辑neovimrc********************************************

noremap <LEADER>rc :e ~/.vim/vimrc<CR>

"**************************************文件关闭光标记忆********************************************

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"************************************双击查找下一个占位符******************************************

nnoremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"************************************C/C++单行注释方式改变******************************************

nnoremap <LEADER>c <Esc>$F/ld2hd$i/*<Esc>pa<space>*/<Esc>

"************************************C/C++注释更改******************************************

nnoremap cic <Esc>0f*2lvt*hc

"****************************************快速移动行************************************************

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

"****************************************快速添加空行**********************************************

nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

"****************************************快速选中查找**********************************************

vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"****************************************存储历史记录**************************************************

if empty(glob("~/.config/nvim/tmp/"))
    echo "Making the tmp dir!"
    silent exec "!mkdir -p ~/.config/nvim/tmp/backup"
    silent exec "!mkdir -p ~/.config/nvim/tmp/undo"
endif

set undofile
set swapfile
set nobackup
set undodir=~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup
set directory=~/.config/nvim/tmp/backup

"****************************************内置终端**************************************************
" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
