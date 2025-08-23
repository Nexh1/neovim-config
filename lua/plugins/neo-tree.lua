return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            added     = "✚",
            modified  = "",
            deleted   = "✖",
            renamed   = "󰁕",
            untracked = "★",
          },
        },
      },
    })

    vim.keymap.set('n', '<C-n>', function()
      require("neo-tree.command").execute({
        toggle = true,
        dir = vim.loop.cwd(),
        position = "left",
        reveal = true,
      })
    end, { noremap = true, silent = true })

    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#e06c75", bold = true })
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded",     { fg = "#98c379" })
    vim.api.nvim_set_hl(0, "NeoTreeGitModified",  { fg = "#e5c07b" })
    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted",   { fg = "#be5046" })
    vim.api.nvim_set_hl(0, "NeoTreeGitRenamed",   { fg = "#61afef" })
  end
}

