return {
  "stevearc/conform.nvim",
  config = function()
    local util = require("conform.util")

    require("conform").setup({
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        php = { "pint" },
      },
      formatters = {
        pint = {
          cwd = util.root_file({ "pint.json", "composer.json", ".git" }),
          require_cwd = true,
        },
      },
      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 1000,
        lsp_format = "never",
      },
    })
  end,
}
