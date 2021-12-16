-- require'clipboard-image'.setup {
--   -- Default configuration for all typefile
--   default = {
--     img_dir = "img",
--     img_dir_txt = "img",
--     img_name = function () return os.date('%Y-%m-%d-%H-%M-%S') end,
--     affix = "%s"
--   },
--   -- You can create configuration for ceartain filetype by creating another field (markdown, in this case)
--   -- If you're uncertain what to name your field to, you can run `:set filetype?`
--   -- Missing options from `markdown` field will be replaced by options from `default` field
--   markdown = {
--     img_dir = function () return vim.fn.expand("%:r") end, -- Use table for nested dir (New feature form PR #20)
--     img_dir_txt = function () return vim.fn.expand("%:r") end, -- Use table for nested dir (New feature form PR #20)
--     img_name = function () return os.date('%Y-%m-%d-%H-%M-%S') end,
--     affix = "![](%s)"
--   }
-- }

require'clipboard-image'.setup {
  default = {
    img_name = function ()
      vim.fn.inputsave()
      local name = vim.fn.input('Name: ')
      vim.fn.inputrestore()

      if name == nil or name == '' then
        return os.date('%y-%m-%d-%H-%M-%S')
      end
      return name
    end,
  },
    markdown = {
    affix = "![image](%s)"
  }

}


