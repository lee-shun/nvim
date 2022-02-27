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

" ===
" === vim-cpp-enhanced-highlight
" ===
"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_concepts_highlight = 1

" ===
" === vim-lsp-cxx-highlight
" ===
" let g:lsp_cxx_hl_use_nvim_text_props = 1

" hi LspCxxHlGroupEnumConstant ctermfg=Red guifg=Red cterm=none gui=none
" hi LspCxxHlGroupNamespace ctermfg=Blue guifg=Blue cterm=bold gui=bold
hi LspCxxHlGroupMemberVariable ctermfg=LightRed guifg=LightRed  cterm=none gui=none

" ===
" === vim-latex-live-preview
" ===
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'latexmk'.'-f'
let g:livepreview_use_biber = 1
let g:livepreview_cursorhold_recompile = 0

" ===
" === vimtex
" ===
let g:vimtex_mappings_enabled=1
let g:vimtex_imaps_enabled=0
let g:vimtex_text_obj_enabled=1
let g:vimtex_fold_enabled=1
let g:tex_flavor='latex'
if has('win32')
      let g:vimtex_view_general_viewer = 'SumatraPDF'
      let g:vimtex_view_general_options
                  \ = '-reuse-instance -forward-search @tex @line @pdf'
      let g:vimtex_view_general_options_latexmk = '-reuse-instance'
else
      let g:vimtex_view_method = 'zathura'
endif
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_format_enabled=1


" ===
" === pdf
" ===
let g:pdf_convert_on_edit = 1
let g:pdf_convert_on_read = 1


" ===
" === bullets
" ===
let g:bullets_set_mappings = 0


" ===
" === markdown(plasticboy)
" ===
let g:vim_markdown_math=1
let g:vim_markdown_conceal=1
let g:closetag_html_style=1

" ===
" === markdown_preview
" ===
let g:vim_markdown_preview_github=1

" ===
" === markdown_preview.nvim
" ===
let g:mkdp_browser = 'google-chrome'
" google-chrome  --password-store=gnome
function! g:Open_browser(url)
  silent exec "!google-chrome --password-store=gnome --new-window " . a:url . " &"
endfunction
let g:mkdp_browserfunc = 'g:Open_browser'


" ===
" === vimWiKi
" ===
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" ===
" === vim-instant-markdown
" ===
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
" let g:instant_markdown_mathjax = 1
let g:instant_markdown_autoscroll = 1
let g:instant_markdown_browser = 'google-chrome'

" ===
" === mkdx
" ===
" m usuall for mark in vim, but I never use it!
let g:mkdx#settings = {
            \'highlight': { 'enable': 0 },
            \'map': { 'prefix': '=' }
            \}


" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
"let g:python_slow_sync = 0


" ===
" === Jedi-vim
" ===
let g:jedi#goto_command = "gd"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>s"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "<C-d>"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<Tab>"
let g:jedi#rename_command = "<leader>r"

" ===
" === open
" ===
let g:open#image = 'feh'
let g:open#pdf = 'google-chrome'
let g:open#video = 'vlc'
let g:open#audio = 'vlc'
