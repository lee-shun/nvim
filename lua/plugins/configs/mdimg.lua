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


