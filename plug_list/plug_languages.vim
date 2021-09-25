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

"MATLAB
" Plug 'yinflying/matlab.vim'

"C++
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jackguo380/vim-lsp-cxx-highlight'
" Plug 'LucHermitte/VimFold4C'

"Cmake
Plug 'pboettch/vim-cmake-syntax'
Plug 'vhdirk/vim-cmake'

"LATEX
Plug 'lervag/vimtex'
" Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

"markdown
" Plug 'dkarter/bullets.vim'
Plug 'SidOfc/mkdx', {'for' :['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync()  }, 'for' :['markdown', 'vim-plug']  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle'  }
Plug 'lee-shun/vim-markdown-wiki'
" Plug 'docunext/closetag.vim', {'for':['markdown', 'html', 'vim-plug']}

" Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" Plug 'vimwiki/vimwiki'
" Plug 'plasticboy/vim-markdown'
" Plug 'gabrielelana/vim-markdown'

"!!it will change filetype  from md to pandoc file
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-pandoc'
" It needs the asyncrun.vim And marp-cli (https://github.com/marp-team/marp-cli)
" On win10, use SumatraPDF (https://www.sumatrapdfreader.org/free-pdf-reader)
" On Linux, use Zathura(maybe...)
" Plug 'skywind3000/asyncrun.vim'
" Plug 'mattf1n/VimMarp' 



"Python
" Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
" Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
" Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
" Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
" Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
" Plug 'vim-python/python-syntax', { 'for' :['python', 'vim-plug'] }
" Plug 'davidhalter/jedi-vim'     "autocomplete
" Plug 'tell-k/vim-autopep8'      "auto format
"Plug 'nvie/vim-flake8'          "static check


"i3-wm
Plug 'mboughaba/i3config.vim'