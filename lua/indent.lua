require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    use_treesitter = true,
    enabled = false,
}

vim.g.indent_blankline_context_patterns = {
    "declaration", "expression", "pattern", "primary_expression",
    "statement", "switch_body"
}
