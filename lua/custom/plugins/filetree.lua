-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup({
      window = {
        position = "left",
        width = 40,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ["o"] = "open",
          ["oc"] = false,
          ["od"] = false,
          ["og"] = false,
          ["om"] = false,
          ["on"] = false,
          ["os"] = false,
          ["ot"] = false,
        }
      },
      filesystem = {
        window = {
          mappings = {
            ["oc"] = false,
            ["od"] = false,
            ["og"] = false,
            ["om"] = false,
            ["on"] = false,
            ["os"] = false,
            ["ot"] = false,
          }
        },
      },
      buffers = {
        window = {
          mappings = {
            ["oc"] = false,
            ["od"] = false,
            ["og"] = false,
            ["om"] = false,
            ["on"] = false,
            ["os"] = false,
            ["ot"] = false,
          }
        },
      },
      git_status = {
        window = {
          mappings = {
            ["oc"] = false,
            ["od"] = false,
            ["og"] = false,
            ["om"] = false,
            ["on"] = false,
            ["os"] = false,
            ["ot"] = false,
          }
        },
      },
    })
  end,
}
