require("indent_blankline").setup {}

-- indentline
vim.g.indent_char = "┆"
vim.g.indent_blankline_char = "┆"
vim.g.indent_blankline_show_end_of_line = false
vim.g.indent_blankline_filetype_exclude = {"help", "Nvimtree", "coc-explorer", "dashboard"}
vim.g.indent_blankline_buftype_exclude = {"terminal", "prompt"}
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_highlight = "Label"
vim.g.indent_blankline_context_patterns = {"class", "function", "method", "^if", "^while", "^for", "^object", "^table", "block"}
vim.g.indent_blankline_show_trailing_blankline_indent = false
