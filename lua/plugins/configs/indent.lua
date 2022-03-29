require("indent_blankline").setup {}
require("indent_blankline").setup {
    char = "┆",
    show_current_context = true,
    show_current_context_start = true,
    context_patterns = {"class", "function", "method", "^if", "^else","^else if", "^while", "^for", "^object", "^table", "block"},
    show_end_of_line = false,
    filetype_exclude = {"help", "Nvimtree", "coc-explorer", "dashboard"},
    buftype_exclude = {"terminal", "prompt"},
}
