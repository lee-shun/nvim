"***********************************************************************************************************************
"       ___       ___           ___           ___                    ___           ___                       ___
"      /\__\     /\  \         /\  \         /\  \                  /\__\         /\__\          ___        /\__\
"     /:/  /    /::\  \       /::\  \       /::\  \                /::|  |       /:/  /         /\  \      /::|  |
"    /:/  /    /:/\:\  \     /:/\:\  \     /:/\ \  \              /:|:|  |      /:/  /          \:\  \    /:|:|  |
"   /:/  /    /::\~\:\  \   /::\~\:\  \   _\:\~\ \  \            /:/|:|  |__   /:/__/  ___      /::\__\  /:/|:|__|__
"  /:/__/    /:/\:\ \:\__\ /:/\:\ \:\__\ /\ \:\ \ \__\          /:/ |:| /\__\  |:|  | /\__\  __/:/\/__/ /:/ |::::\__\
"  \:\  \    \:\~\:\ \/__/ \:\~\:\ \/__/ \:\ \:\ \/__/          \/__|:|/:/  /  |:|  |/:/  / /\/:/  /    \/__/~~/:/  /
"   \:\  \    \:\ \:\__\    \:\ \:\__\    \:\ \:\__\                |:/:/  /   |:|__/:/  /  \::/__/           /:/  /
"    \:\  \    \:\ \/__/     \:\ \/__/     \:\/:/  /                |::/  /     \::::/__/    \:\__\          /:/  /
"     \:\__\    \:\__\        \:\__\        \::/  /                 /:/  /       ~~~~         \/__/         /:/  /
"      \/__/     \/__/         \/__/         \/__/                  \/__/                                   \/__/
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"***********************************************************************************************************************

"===
"=== python_path
"===
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/bin/python3'

" ===
" === basic
" ===
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set ffs=unix,dos,mac

set nocompatible
let g:mapleader = ' '
set autochdir
set autoread
filetype plugin indent on

" display
syntax on
set scrolloff=5
set number
set relativenumber
set cursorline
set cursorcolumn
" let &colorcolumn="81,".join(range(121,999),",")
let &colorcolumn="81,121"
set textwidth=80
set hidden
set showmode
set showcmd
set mouse=
set nowrap
set linebreak
set timeout           " for mappings
set timeoutlen=1000   " default value
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value
set conceallevel=0
set wildmenu
set lazyredraw
set ttyfast
set t_Co=256
set termguicolors
set laststatus=2
set cmdheight=1
set spelllang=en,cjk  " Spell languages
set spellfile=~/.config/nvim/spell/en.utf-8.add
" Align indent to next multiple value of shiftwidth. For its meaning,
" see http://vim.1045645.n5.nabble.com/shiftround-option-td5712100.html
set shiftround
" Virtual edit is useful for visual block edit
set virtualedit=block

" incremental substitution (neovim)
set inccommand=split

" keyword match
set showmatch               " 显示括号配对情况
set iskeyword+=_,$,@,%,#,-  " 带有如下符号的单词不要被换行分割
set matchpairs=(:),{:},[:],<:>
set whichwrap=b,s,<,>,[,]

" search
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" indent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab  " 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set expandtab " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" folding
set foldmethod=manual
set foldlevel=99
set foldenable

" invisible symbol
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←
set showbreak=↪

" share clipboard
set clipboard^=unnamed,unnamedplus
" au TextYankPost * silent! lua vim.highlight.on_yank()

" ===
" === built-in completion
" ===
set complete+=k
set completeopt=menuone,noselect,noinsert

" ===
" === split window
" ===
set splitright
set splitbelow

" ===
" === save the cursor line position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ===
" === tmp directory
" ===
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

" ===
" === ignore some file types
" ===
set wildignore+=*.o,*.obj,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.pyc
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.pdf

" ===
" === build-in netrw
" ===
let g:netrw_preview	=1
let g:netrw_hide = 1
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 30
let g:netrw_altv = 1
let g:netrw_chgwin = 2
let g:netrw_list_hide = '.*\.swp$'
let g:netrw_localrmdir = 'rm -rf'
