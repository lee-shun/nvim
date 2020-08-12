"**********************************************************************************************************
"
"
"  _                    _   _                 _                    
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___ 
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__ 
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plug_general_enhance_settings.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

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


"===
"===rainbow
"===
let g:rainbow_active = 1




"===
"===Far
"===
let g:far#enable_undo = 1


"===
"===leaderf
"===


"===
"===ctrlp
"===
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


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
let g:indentLine_enabled = 0
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
let g:vista_default_executive = 'ctags'
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]


"===
"===Bookmarks
"===
let g:bookmark_sign = '♥'
"let g:bookmark_highlight_lines = 1
