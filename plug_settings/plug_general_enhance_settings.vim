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

""===
""=== Defx.nvim
""===
"autocmd FileType defx call s:defx_my_settings()
"function! s:defx_my_settings() abort
"    " Define mappings
"    nnoremap <silent><buffer><expr> <CR>
"                \ defx#do_action('open')
"    nnoremap <silent><buffer><expr> c
"                \ defx#do_action('copy')
"    nnoremap <silent><buffer><expr> m
"                \ defx#do_action('move')
"    nnoremap <silent><buffer><expr> p
"                \ defx#do_action('paste')
"    nnoremap <silent><buffer><expr> l
"                \ defx#do_action('open')
"    nnoremap <silent><buffer><expr> E
"                \ defx#do_action('open', 'vsplit')
"    nnoremap <silent><buffer><expr> P
"                \ defx#do_action('preview')
"    nnoremap <silent><buffer><expr> o
"                \ defx#do_action('open_tree', 'toggle')
"    nnoremap <silent><buffer><expr> K
"                \ defx#do_action('new_directory')
"    nnoremap <silent><buffer><expr> N
"                \ defx#do_action('new_file')
"    nnoremap <silent><buffer><expr> M
"                \ defx#do_action('new_multiple_files')
"    nnoremap <silent><buffer><expr> C
"                \ defx#do_action('toggle_columns',
"                \                'mark:indent:icon:filename:type:size:time')
"    nnoremap <silent><buffer><expr> S
"                \ defx#do_action('toggle_sort', 'time')
"    nnoremap <silent><buffer><expr> d
"                \ defx#do_action('remove')
"    nnoremap <silent><buffer><expr> r
"                \ defx#do_action('rename')
"    nnoremap <silent><buffer><expr> !
"                \ defx#do_action('execute_command')
"    nnoremap <silent><buffer><expr> x
"                \ defx#do_action('execute_system')
"    nnoremap <silent><buffer><expr> yy
"                \ defx#do_action('yank_path')
"    nnoremap <silent><buffer><expr> .
"                \ defx#do_action('toggle_ignored_files')
"    nnoremap <silent><buffer><expr> ;
"                \ defx#do_action('repeat')
"    nnoremap <silent><buffer><expr> h
"                \ defx#do_action('cd', ['..'])
"    nnoremap <silent><buffer><expr> ~
"                \ defx#do_action('cd')
"    nnoremap <silent><buffer><expr> q
"                \ defx#do_action('quit')
"    nnoremap <silent><buffer><expr> <Space>
"                \ defx#do_action('toggle_select') . 'j'
"    nnoremap <silent><buffer><expr> *
"                \ defx#do_action('toggle_select_all')
"    nnoremap <silent><buffer><expr> j
"                \ line('.') == line('$') ? 'gg' : 'j'
"    nnoremap <silent><buffer><expr> k
"                \ line('.') == 1 ? 'G' : 'k'
"    nnoremap <silent><buffer><expr> <C-l>
"                \ defx#do_action('redraw')
"    nnoremap <silent><buffer><expr> <C-g>
"                \ defx#do_action('print')
"    nnoremap <silent><buffer><expr> cd
"                \ defx#do_action('change_vim_cwd')
"endfunction
"" nnoremap tt :Defx -split=vertical -winwidth=30 -toggle -new
""             \ -direction=topleft -columns=git:mark:icons:indent:filename:type<CR>

" ===
" === NERDTree
" ===
"noremap tt :NERDTreeToggle<CR>


" ===
" === NERDTree-git
" ===
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


" ===
" === rainbow
" ===
let g:rainbow_active = 1


" ===
" === Far
" ===
let g:far#enable_undo = 1


" ===
" === leaderf
" ===


""===
""===ctrlp
""===
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'


""===
""===thesaurus_query
""===
"let g:tq_map_keys=0
"nnoremap <leader>rw :ThesaurusQueryReplaceCurrentWord<CR>
"vnoremap <Leader>rw y:ThesaurusQueryReplace <C-r>"<CR>


" ===
" === indentLine
" ===
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0


" ===
" === indent_guides
" ===
let g:indent_guides_enable_on_vim_startup = 0
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * hi IndentGuidesEven ctermbg=darkgrey


" ===
" === Vista
" ===
let g:vista_default_executive = 'ctags' "可以是ctags，注意版本问题
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]


" ===
" === Bookmarks
" ===
let g:bookmark_sign = '♥'
"let g:bookmark_highlight_lines = 1


" ===
" === Undotree
" ===
" noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
    nmap <buffer> u <plug>UndotreeNextState
    nmap <buffer> e <plug>UndotreePreviousState
    nmap <buffer> U 5<plug>UndotreeNextState
    nmap <buffer> E 5<plug>UndotreePreviousState
endfunc


"==
"== Vim floaterm
"==
" nmap <C-t> :FloatermToggle<CR>


"==
"== FZF
"==
" noremap <leader>ff :Files<CR>
" noremap <leader>fa :Ag<CR>
" noremap <leader>fb :Buffers<CR>
" noremap <leader>fl :Lines<CR>
" let g:fzf_preview_window = 'right:60%'
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }


" ===
" === vim-calendar
" ===
noremap \c :Calendar -position=here<CR>
noremap \\ :Calendar -view=clock -position=here<CR>
" let g:calendar_google_calendar = 1
" let g:calendar_google_task = 1


" ===
" === vim-context
" ===
let g:context_add_mappings=0


" ===
" === vim-move
" ===
let g:move_key_modifier = 'S-A'

" ===
" === auto save
" ===
let g:auto_save = 0
let g:auto_save_silent = 0
let g:auto_save_events = ["InsertLeave", "TextChanged"]

augroup ft_autosave
    autocmd!
    autocmd FileType tex let b:auto_save = 1
    autocmd FileType cpp let b:auto_save = 1
augroup END

" ===
" === illuminate
" ===
let g:Illuminate_ftblacklist = ['python', 'coc-explorer']

" ===
" === float term
" ===
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.7
