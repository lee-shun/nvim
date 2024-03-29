local present, telescope = pcall(require, "telescope")
if not present then
    return
end

telescope.setup(
    {
        defaults = {
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case"
            },
            prompt_prefix = "   ",
            selection_caret = "  ",
            entry_prefix = "  ",
            initial_mode = "insert",
            selection_strategy = "reset",
            sorting_strategy = "descending",
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    prompt_position = "top",
                    preview_width = 0.55,
                    results_width = 0.8
                },
                vertical = {
                    mirror = false
                },
                width = 0.87,
                height = 0.80,
                preview_cutoff = 120
            },
            file_sorter = require("telescope.sorters").get_fuzzy_file,
            file_ignore_patterns = {},
            generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
            path_display = {"absolute"},
            winblend = 0,
            border = {},
            borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"},
            color_devicons = true,
            use_less = true,
            set_env = {["COLORTERM"] = "truecolor"}, -- default = nil,
            file_previewer = require("telescope.previewers").vim_buffer_cat.new,
            grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
            qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
            -- Developer configurations: Not meant for general override
            buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker
        }
    }
)

-- mappings
vim.api.nvim_set_keymap("n", "<Leader>ff", "<Cmd> Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>fb", "<Cmd> Telescope buffers<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>fm", "<Cmd> Telescope oldfiles<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>fw", "<Cmd> Telescope grep_string<CR>", {noremap = true, silent = true})
