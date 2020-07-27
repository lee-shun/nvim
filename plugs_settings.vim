"**********************************************************************************************************
"
"
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plugs_settings.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************


"****************************************插件配置区********************************************

"===
"=== coc.nvim
"===
source ~/.config/nvim/coc_plug.vim

"===
"===themes
"===

set background=dark
colorscheme deus
let g:deus_termcolors=256

"colorscheme gruvbox
"colorscheme onedark
"let g:SnazzyTransparent = 1

"===
"=== eleline.vim
"===


" ===
" === xtabline
" ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
"noremap to :XTabCycleMode<CR>
"noremap \p :XTabInfo<CR>


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
"let g:vimtex_compiler_method='latexmk' "default setting
let g:vimtex_quickfix_mode=1
set conceallevel=1
let g:tex_conceal='abdmg'
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'UltiSnips']
silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_compiler_latexmk_engines = {
            \ '_'                : '-xelatex',
            \ 'pdflatex'         : '-pdf',
            \ 'dvipdfex'         : '-pdfdvi',
            \ 'lualatex'         : '-lualatex',
            \ 'xelatex'          : '-xelatex',
            \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
            \ 'context (luatex)' : '-pdf -pdflatex=context',
            \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
            \}


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

" ===
" === indentLine
" ===
let g:indentLine_setColors = 0

"===
"===indent_guides
"===
let g:indent_guides_enable_on_vim_startup = 0
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
