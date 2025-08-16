return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    vim.keymap.set('n', '<C-n>', function()
      require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd(), position = "left", reveal = true })
    end, { noremap = true, silent = true })
  end
}
