"**********************************************************************************************************
"
"
"  _                    _   _                 _
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plug_coc_settings.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************


"==
"==coc.nvim
"==
"coc-plugins

let g:coc_global_extensions = [
            \ 'coc-git',
            \ 'coc-gitignore',
            \ 'coc-yank',
            \ 'coc-cmake',
            \ 'coc-clangd',
            \ 'coc-lists',
            \ 'coc-kite',
            \ 'coc-marketplace',
            \ 'coc-explorer',
            \ 'coc-highlight',
            \ 'coc-translator',
            \ 'coc-python',
            \ 'coc-pyright',
            \ 'coc-pairs',
            \ 'coc-spell-checker',
            \ 'coc-json',
            \ 'coc-xml',
            \ 'coc-yaml',
            \ 'coc-calc',
            \ 'coc-syntax',
            \ 'coc-tasks',
            \ 'coc-todolist',
            \ 'coc-diagnostic',
            \ 'coc-vimlsp',
            \ 'coc-actions',
            \ 'coc-snippets',
            \ 'coc-html',
            \ 'coc-calc',
            \ 'coc-word',
            \ 'coc-tabnine',
            \ 'coc-conventional',
            \ 'coc-floaterm',
            \ 'coc-smartf',
            \ 'coc-sh',
            \ 'coc-weather',
            \ 'coc-markdownlint',
            \ 'coc-markmap',
            \]

"==
"==coc.nvim
"==
"coc-basic-settings

" TextEdit might fail if hidden is not set.
set hidden

" 关闭备份，issue已经被关闭
" set nobackup
" set nowritebackup

" Give more space for displaying messages.
" set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

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

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent><LEADER>d :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" nmap <silent> <Leader>rn <Plug>(coc-floatinput-rename)

" Formatting selected code.
xmap <leader>fo  <Plug>(coc-format-selected)
nmap <leader>fo  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" " Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@


" Remap keys for applying codeAction to the current line.
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

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
 nmap <silent> <S-TAB> <Plug>(coc-range-select)
 xmap <silent> <S-TAB> <Plug>(coc-range-select)

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

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> \ld  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> \le  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> \lc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> \lo  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> \ls  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> \lj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> \lk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> \lp  :<C-u>CocListResume<CR>


"==
"==coc.nvim
"==
"coc-yank
nnoremap <silent> <space>ya  :<C-u>CocList -A --normal yank<cr>


"==
"==coc.nvim
"==
"coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')


"==
"==coc.nvim
"==
"coc-explorer
nmap tt :CocCommand explorer<CR>


"==
"==coc.nvim
"==
"coc-translator
" popup
nmap ts <Plug>(coc-translator-p)
vmap ts <Plug>(coc-translator-pv)
" echo
nmap <Leader>e <Plug>(coc-translator-e)
vmap <Leader>e <Plug>(coc-translator-ev)
" replace
nmap <Leader>rp <Plug>(coc-translator-r)
vmap <Leader>rp <Plug>(coc-translator-rv)

"==
"==coc.nvim
"==
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

"==
"==coc.nvim
"==
"coc-floatinput
" autocmd ColorScheme *
"       \ hi CocHelperNormalFloatBorder guifg=#dddddd guibg=#575B54
"       \ | hi CocHelperNormalFloat guibg=#575B54

"==
"==coc.nvim
"==
"coc-split-term
" nmap <silent> <C-t> <Plug>(coc-split-term-show)
" nmap <silent> <C-t> <Plug>(coc-split-term-hide)
" nmap <silent> <C-t> <Plug>(coc-split-term-toggle)

"==
"==coc.nvim
"==
"coc-smartf
" press <esc> to cancel.
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)
 
augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end
