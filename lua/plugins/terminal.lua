return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      direction = "float",
      float_opts = {
        border = "curved",
      },
      open_mapping = [[<c-\>]],
      shade_terminals = true,
      start_in_insert = true,
      close_on_exit = true,
      persist_size = true,
    })
  end,
}
