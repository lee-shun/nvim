"**********************************************************************************************************
"
"
"  _                    _   _                 _
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plug_beauty_settings.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

"===
"===themes
"===
set background=dark
" let g:deus_termcolors=256
" let g:SnazzyTransparent = 1
" let g:oceanic_material_transparent_background = 1
" colorscheme gruvbox9_soft
" colorscheme onedark
" colorscheme snazzy
colorscheme oceanic_material

"===
"===lightline
"===
let g:lightline = {
            \ 'colorscheme': 'wombat',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'tabline': {
            \   'left': [ ['buffers'] ],
            \   'right': [ ['close'] ]
            \ },
            \ 'component_expand': {
            \   'buffers': 'lightline#bufferline#buffers'
            \ },
            \ 'component_type': {
            \   'buffers': 'tabsel'
            \ }
            \ }

"===
"===lightline-bufferline
"===
set showtabline=2
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#enable_nerdfont = 1

"===
"=== eleline
"===
let g:eleline_powerline_fonts = 1

"===
"=== spaceline
"===
let g:spaceline_colorscheme = 'space'
let g:spaceline_seperate_style= 'slant-cons'


"===
"=== DashBoard
"===
" Default value is clap
let g:dashboard_default_executive ='fzf'
let g:dashboard_default_header = 'commicgirl5'

" ===
" === xtabline
" ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 1
let g:xtabline_settings.tabline_modes = [ 'buffers', 'tabs']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
" noremap to :XTabMode<CR>
" noremap \p :XTabInfo<CR>


"===
"=== airline
"===
let g:airline_powerline_fonts = 1
"let g:airline_theme='gruvbox'
"let g:airline_theme='powerlineish'
"let g:airline_theme='deus'
let g:airline_theme='oceanicnext'
"let g:airline#extensions#tabline#enabled = 1


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
