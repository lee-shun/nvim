-- Use <Tab> and <S-Tab> to navigate through popup menu
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})

-- Set completeopt to have a better completion experience
vim.o.completeopt="menuone,noinsert,noselect"

-- possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
vim.g.completion_enable_snippet="UltiSnips"

-- Avoid showing message extra message when using completion
vim.o.shortmess = vim.o.shortmess .. "c"

require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
