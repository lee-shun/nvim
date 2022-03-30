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

setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

" ===
" === for commet coverting
" ===
nnoremap <buffer> <LEADER>c <Esc>k^/\/\/<CR>d2lv$hdA/* */<Esc>2hP$:set nohlsearch<CR>
nnoremap <buffer> <LEADER>b <Esc>0f*ldt*<Esc>$p0f*2x$x

" ===
" === text obj for /**/
" ===
function! s:inComment()
    call search('\/\*\*', 'bceW')
    normal! jl
    normal! vl
    call search("\*\/", 'ceW')
    normal! kg_
endfunction

function! s:aroundComment()
    call search('\/\*\*', 'bceW')
    normal! F/
    normal! v$
    call search("\*\/", 'ceW')
    normal! $
endfunction
xnoremap <buffer> <silent> ic :<c-u>call <sid>inComment()<cr>
onoremap <buffer> <silent> ic :<c-u>call <sid>inComment()<cr>
xnoremap <buffer> <silent> ac :<c-u>call <sid>aroundComment()<cr>
onoremap <buffer> <silent> ac :<c-u>call <sid>aroundComment()<cr>

" ===
" === text obj for //
" ===
function! s:inComment2()
    call search("\/\/")
    normal! 3l
    normal! vg_
endfunction
xnoremap <buffer> <silent> b/ :<c-u>call <sid>inComment2()<cr>
onoremap <buffer> <silent> b/ :<c-u>call <sid>inComment2()<cr>
