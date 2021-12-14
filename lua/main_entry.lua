-- colorscheme
-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)
-- require('highlights')

-- galaxyline
require('statusline.fulline')

-- nvimtree
-- require('nvimtree')

-- dashboard
require('dashboard')

-- gitsign
require('gitsigns').setup()

-- treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
  }
}

-- indent_blankline
require('indent')
-- require('rangeline')

-- todo
require('todo')

-- comment
require('nvim_comment').setup()

-- autopairs
require('nvim-autopairs').setup()

-- number color
require("colorizer").setup()

-- shade
-- require("shade").setup()

-- telescope
require('scope')

-- true zen
require('zenmode')

-- nvim lsp
require('lsp.lsp_main')

-- ros
require('ros_nvim')

-- markdown
require('mdimg')
