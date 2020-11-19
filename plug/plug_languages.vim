"**********************************************************************************************************
"
"
"  _                    _   _                 _
" | |    ___  ___      | \ | | ___  _____   _(_)_ __ ___  _ __ ___
" | |   / _ \/ _ \_____|  \| |/ _ \/ _ \ \ / / | '_ ` _ \| '__/ __|
" | |__|  __/  __/_____| |\  |  __/ (_) \ V /| | | | | | | | | (__
" |_____\___|\___|     |_| \_|\___|\___/ \_/ |_|_| |_| |_|_|  \___|
"
"File   : plug_languages.vim
"
"Author : lee-shun
"
"Email  : 2015097272@qq.com
"
"**********************************************************************************************************

"MATLAB
Plug 'yinflying/matlab.vim'

"C++
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'LucHermitte/VimFold4C'
Plug 'jackguo380/vim-lsp-cxx-highlight'

"Cmake
Plug 'pboettch/vim-cmake-syntax'
Plug 'vhdirk/vim-cmake'

"LATEX
" Plug 'lervag/vimtex'

"markdown
Plug 'dkarter/bullets.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Plug 'vimwiki/vimwiki'
" Plug 'plasticboy/vim-markdown'

"Python
"Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
"Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
"Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'vim-python/python-syntax', { 'for' :['python', 'vim-plug'] }
"Plug 'davidhalter/jedi-vim'     "autocomplete
"Plug 'tell-k/vim-autopep8'      "auto format
"Plug 'nvie/vim-flake8'          "static check
