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


" coc-plugins
let g:coc_global_extensions = [
            \ 'coc-pyright',
            \ 'coc-texlab',
            \ 'coc-ltex',
            \ 'coc-vimtex',
            \ 'coc-sh',
            \ 'coc-markdownlint',
            \ 'coc-markmap',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ 'coc-vimlsp',
            \ 'coc-snippets',
            \ 'coc-lists',
            \ 'coc-marketplace',
            \ 'coc-explorer',
            \ 'coc-translator',
            \ 'coc-spell-checker',
            \ 'coc-syntax',
            \ 'coc-diagnostic',
            \ 'coc-actions',
            \ 'coc-lightbulb',
            \ 'coc-calc',
            \ 'coc-emoji',
            \ 'coc-word',
            \ 'coc-yank',
            \ 'coc-tabnine',
            \ 'coc-clangd'
            \]


" coc-basic-settings
" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" coc-clangd
nnoremap <leader>j :CocCommand clangd.switchSourceHeader<cr>

" coc-yank
nnoremap <silent> <space>ya  :<C-u>CocList -A --normal yank<cr>


" coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')


" coc-explorer
nmap <leader>t :CocCommand explorer<CR>


" coc-translator
" popup
nmap ts <Plug>(coc-translator-p)
vmap ts <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
vmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>rp <Plug>(coc-translator-r)
vmap <Leader>rp <Plug>(coc-translator-rv)

" coc-git
" lightline
" let g:lightline = {
"   \ 'active': {
"   \   'left': [
"   \     [ 'mode', 'paste' ],
"   \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
"   \   ],
"   \   'right':[
"   \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
"   \     [ 'blame' ]
"   \   ],
"   \ },
"   \ 'component_function': {
"   \   'blame': 'LightlineGitBlame',
"   \ }
" \ }

" function! LightlineGitBlame() abort
"   let blame = get(b:, 'coc_git_blame', '')
"   " return blame
"   return winwidth(0) > 120 ? blame : ''
" endfunction

" coc-floatinput
" autocmd ColorScheme *
"       \ hi CocHelperNormalFloatBorder guifg=#dddddd guibg=#575B54
"       \ | hi CocHelperNormalFloat guibg=#575B54

" coc-split-term
" nmap <silent> <C-t> <Plug>(coc-split-term-show)
" nmap <silent> <C-t> <Plug>(coc-split-term-hide)
" nmap <silent> <C-t> <Plug>(coc-split-term-toggle)

" coc-smartf
" press <esc> to cancel.
" nmap f <Plug>(coc-smartf-forward)
" nmap F <Plug>(coc-smartf-backward)
" nmap ; <Plug>(coc-smartf-repeat)
" nmap , <Plug>(coc-smartf-repeat-opposite)
"  
" augroup Smartf
"   autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
"   autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
" augroup end

" coc-ltex
" let g:coc_filetype_map = {'tex': 'latex'}
