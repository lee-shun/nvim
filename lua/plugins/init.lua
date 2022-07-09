-- galaxyline
require('plugins.configs.statusline.cocline')

-- dashboard
require('plugins.configs.dashboard')

-- gitsign
require('gitsigns').setup()

-- treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
     disable = { "markdown" },
  },
  rainbow = {
    enable = true,
  }
}

vim.o.foldmethod='expr'
vim.o.foldexpr='nvim_treesitter#foldexpr()'

-- indent_blankline
require('plugins.configs.indent')

-- todo
require('plugins.configs.todo')

-- comment
require('Comment').setup()

-- autopairs
require('nvim-autopairs').setup()

-- number color
require("colorizer").setup()

-- shade
-- require("shade").setup()

-- telescope
require('plugins.configs.scope')

-- true zen
require('plugins.configs.zenmode')

-- ros
require('plugins.configs.ros_nvim')

-- markdown
require('plugins.configs.mdimg')

-- nvim lsp
require('plugins.configs.lsp')
