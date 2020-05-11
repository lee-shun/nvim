"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"author: lee-shun
"email:2015097272@qq.com
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"****************************************初始设置区********************************************
"===
"=== Auto load for first time uses
"===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"===
"=== Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
"===
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!touch ~/.config/nvim/_machine_specific.vim"
endif
source ~/.config/nvim/_machine_specific.vim

"**************************************交换文件设置区******************************************



"****************************************基本设置区********************************************

let g:mapleader = ' '
filetype on
filetype plugin on
set autochdir "自动切换工作目录

"****************************************基本设置区********************************************
"编码设置
set encoding=UTF-8

"显示设置
syntax on             " 设置高亮
set scrolloff=5       " 设置滚动余量
set mouse=a           " 打开鼠标
set number            " 打开行号
set relativenumber    " 相对行号
set cursorline        " 打开光标提示线
set cursorcolumn      " 打开光标提示线
set noshowmode        " 不要显示模式
set nowrap              " 显示行折叠
set linebreak         " 不在单词内部折行
set wildmenu          " vim命令自动补全
set foldmethod=manual " 语法折叠
set nofoldenable      " 开始关闭语法折叠
set t_Co=256          " 256颜色
set termguicolors     " 使用gui，不和终端混合

"搜索设置
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap <C-f> :set nohlsearch<CR>

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

"************************************自动刷新vimrc********************************************

"autocmd BufWritePost $MYVIMRC source $MYVIMRC

"**************************************键盘映射区********************************************

noremap M J "合并行
noremap S :w<CR>
noremap Q :q<CR>
noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

"**************************************共享剪切板********************************************

"共享剪切板
"vnoremap <Leader>y "+y
"vnoremap <Leader>yy "+yy
"nmap <Leader>p "+p

"**************************************分屏设置区********************************************

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

"**************************************ctrl-alt工作区冲突********************************************

nnoremap <C-A-up> <nop>
nnoremap <C-A-down> <nop>
nnoremap <C-A-left> <nop>
nnoremap <C-A-right> <nop>
inoremap <C-A-up> <nop>
inoremap <C-A-down> <nop>
inoremap <C-A-left> <nop>
inoremap <C-A-right> <nop>

"**************************************标签设置区********************************************

noremap te :tabe<CR>
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>

"**************************************Buffer设置区********************************************

noremap <LEADER>bn :bn<CR>
noremap <LEADER>bp :bp<CR>
noremap <LEADER>bd :bd<CR>

"**************************************文件关闭光标记忆******************************************

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"****************************************外部程序启动*********************************************

" Open up lazygit
noremap <c-g>  :term lazygit<CR>

"************************************双击查找下一个占位符******************************************

noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

"****************************************快速移动行*********************************************

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

"****************************************快速添加空行*********************************************

nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

"*****************************************插件安装区*********************************************

call plug#begin('~/.config/nvim/plugged')

"外观美化

" Plug 'liuchengxu/eleline.vim'
" Plug 'mg979/vim-xtabline'
" Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'ajmwagar/vim-deus'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
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
Plug 'godlygeek/tabular'
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
"Plug 'rlue/vim-barbaric' " slowing down vim-multiple-cursors

"英语书写加强
Plug 'reedes/vim-wordy'
Plug 'ron89/thesaurus_query.vim'

"缩进显示
Plug 'nathanaelkane/vim-indent-guides'

"光标所在单词下划线
Plug 'itchyny/vim-cursorword'

"多重光标
Plug 'terryma/vim-multiple-cursors'

"强化书签
Plug 'MattesGroeger/vim-bookmarks'

"查找替换`
Plug 'brooth/far.vim'

"对齐，排版
Plug 'godlygeek/tabular'

call plug#end()

"****************************************插件配置区********************************************

"===
"=== coc.nvim
"===
source ~/.config/nvim/coc_settings.vim

"===
"===themes
"===

set background=dark
colorscheme deus
let g:deus_termcolors=256

" colorscheme gruvbox
" colorscheme onedark
" let g:SnazzyTransparent = 1

" ===
" === eleline.vim
" ===
" let g:airline_powerline_fonts = 0


" " ===
" " === xtabline
" " ===
" let g:xtabline_settings = {}
" let g:xtabline_settings.enable_mappings = 0
" let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
" let g:xtabline_settings.enable_persistance = 0
" let g:xtabline_settings.last_open_first = 1
" noremap to :XTabCycleMode<CR>
" noremap \p :XTabInfo<CR>


"===
"=== airline
"===
" let g:airline_theme='gruvbox'
" let g:airline_theme='powerlineish'
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1



"===
"=== bufferline
"===
"let g:bufferline_echo = 0

"===
"=== goyo
"===
let g:goyo_width=120
let g:goyo_height=120
"g:goyo_linenr

""===
""=== NERDTree
""===
"noremap tt :NERDTreeToggle<CR>


""===
""=== NERDTree-git
""===
"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "✹",
"    \ "Staged"    : "✚",
"    \ "Untracked" : "✭",
"    \ "Renamed"   : "➜",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ "Unknown"   : "?"
"    \ }


"===
"===rainbow
"===
let g:rainbow_active = 1


"===
"===vim-cpp-enhanced-highlight
"===
"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_concepts_highlight = 1


"===
"===sinps
"===
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-e>"
let g:UltiSnipsJumpBackwardTrigger="<c-n>"


"===
"===ctrlp
"===
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'


"===
"===leaderf
"===


"===
"===vimtex
"===
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'UltiSnips']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
let g:vimtex_compiler_progname = 'nvr'


"===
"===vim-markdown
"===
let g:vim_markdown_math = 1


"===
"===markdown-preview
"===
let g:mkdp_auto_start         = 0
let g:mkdp_auto_close         = 1
let g:mkdp_refresh_slow       = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world  = 0
let g:mkdp_open_ip            = ''
let g:mkdp_browser            = 'firefox'
let g:mkdp_echo_preview_url   = 0
let g:mkdp_browserfunc        = ''
let g:mkdp_preview_options    = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


"===
"===markdownWiKi
"===
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


"===
"===thesaurus_query
"===
let g:tq_map_keys=0
nnoremap <leader>rw :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <Leader>rw y:ThesaurusQueryReplace <C-r>"<CR>

"===
"===auto-indent
"===
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * hi IndentGuidesEven ctermbg=darkgrey

"===
"===Vista
"===
noremap <LEADER>t :Vista<CR>


"===
"===Bookmarks
"===
let g:bookmark_sign = '♥'
"let g:bookmark_highlight_lines = 1


"===
"===Far
"===
let g:far#enable_undo = 1
