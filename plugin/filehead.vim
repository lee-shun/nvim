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
"Author : Shun Li
"
"Email  : 2015097272@qq.com
"
"***********************************************************************************************************************

" ===
" === automaticallly add file head
" ===

func SetComment()
    call setline(1,"/*******************************************************************************")
    call append(line(".")    , "*")
    call append(line(".")+1  , "*   Copyright (C) ".strftime("%Y")." Concordia NAVlab. All rights reserved.")
    call append(line(".")+2  , "*")
    call append(line(".")+3  , "*   @Filename: ".expand("%:t"))
    call append(line(".")+4  , "*")
    call append(line(".")+5  , "*   @Author: Shun Li")
    call append(line(".")+6  , "*")
    call append(line(".")+7  , "*   @Email: 2015097272@qq.com")
    call append(line(".")+8  , "*")
    call append(line(".")+9  , "*   @Date: ".strftime("%Y-%m-%d"))
    call append(line(".")+10  , "*")
    call append(line(".")+11  , "*   @Description: ")
    call append(line(".")+12  , "*")
    call append(line(".")+13 , "*******************************************************************************/")
    call append(line(".")+14 , "")
endfunc

" for shell-like file
func SetCommentSh()
    call setline(3,"")
    call setline(4, "#------------------------------------------------------------------------------")
    call setline(5 , "#")
    call setline(6  , "#   Copyright (C) ".strftime("%Y")." Concordia NAVlab. All rights reserved.")
    call setline(7  , "#")
    call setline(8  , "#   @Filename: ".expand("%:t"))
    call setline(9  , "#")
    call setline(10  , "#   @Author: Shun Li")
    call setline(11  , "#")
    call setline(12 , "#   @Date: ".strftime("%Y-%m-%d"))
    call setline(13  , "#")
    call setline(14 , "#   @Email: 2015097272@qq.com")
    call setline(15 , "#")
    call setline(16 , "#   @Description: ")
    call setline(17 , "#")
    call setline(18, "#------------------------------------------------------------------------------")
    call setline(19, "")
    call setline(20, "")
endfunc

func SetTitle()
    if expand("%:e") == 'make'
        call setline(1,"")
        call setline(2,"")
        call SetCommentSh()

    elseif expand("%:e") == 'txt'
        call setline(1,"")
        call setline(2,"")
        call SetCommentSh()

    elseif expand("%:e") == 'sh'
        call setline(1,"#!/system/bin/sh")
        call setline(2,"")
        call SetCommentSh()

    elseif expand("%:e") == 'zsh'
        call setline(1,"#!/system/bin/zsh")
        call setline(2,"")
        call SetCommentSh()

    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python3")
        call setline(2,"# -*- coding: utf-8 -*- #")
        call SetCommentSh()

    elseif expand("%:e") == 'hpp'
        call SetComment()
        call append(line(".")+15, "#ifndef ".toupper(substitute(expand("%:p:r"), "\/", "_", "g"))."_HPP_")
        call append(line(".")+16, "#define ".toupper(substitute(expand("%:p:r"), "\/", "_", "g"))."_HPP_")
        call append(line(".")+17, "")
        call append(line(".")+18, "")
        call append(line(".")+19, "#include<iostream>")
        call append(line(".")+20, "")
        call append(line(".")+21, "namespace A{")
        call append(line(".")+22, "namespace B{")
        call append(line(".")+23, "class ".expand("%:t:r")."{};")
        call append(line(".")+24, "}")
        call append(line(".")+25, "}")
        call append(line(".")+26, "")
        call append(line(".")+27, "")
        call append(line(".")+28, "#endif // ".toupper(substitute(expand("%:p:r"), "\/", "_", "g"))."_HPP_")

    elseif expand("%:e") == 'h'
        call SetComment()
        call append(line(".")+15, "#pragma once")

    elseif expand("%:e") == 'c'
        call SetComment()
        call append(line(".")+15,"#include \"".expand("%:t:r").".h\"")
        call append(line(".")+16, "int main(int argc, char** argv){")
        call append(line(".")+17, "return 0;")
        call append(line(".")+18, "}")

    elseif expand("%:e") == 'cpp'
        call SetComment()
        call append(line(".")+15,"#include \"".expand("%:t:r").".hpp\"")
        call append(line(".")+16, "int main(int argc, char** argv){")
        call append(line(".")+17, "return 0;")
        call append(line(".")+18, "}")

    elseif expand("%:e") == 'cc'
        call SetComment()
        call append(line(".")+15,"#include \"".expand("%:t:r").".hpp\"")
        call append(line(".")+16, "int main(int argc, char** argv){")
        call append(line(".")+17, "return 0;")
        call append(line(".")+18, "}")

    elseif expand("%:e") == 'cxx'
        call SetComment()
        call append(line(".")+15,"#include \"".expand("%:t:r").".hpp\"")
        call append(line(".")+16, "int main(int argc, char** argv){")
        call append(line(".")+17, "return 0;")
        call append(line(".")+18, "}")
    endif
endfunc


autocmd BufNewFile *.cxx,*.c,*.cc,*.hpp,*.h,*.cpp,Makefile,CMakeLists.txt,*.sh,*.zsh,*.py exec ":call SetTitle()"
