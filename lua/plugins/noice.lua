return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline_popup",
        format = {
          cmdline = { pattern = "^:", icon = "", lang = "vim" },
        },
      },
      popupmenu = {
        enabled = true,
      },
      messages = {
        enabled = false,
      },
    })
  end 
}
