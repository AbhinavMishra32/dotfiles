return {
  {"folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    }
  },
  {
    'dnlhc/glance.nvim',
    cmd = 'Glance',
    config = function()
      local keymap = vim.keymap
      keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
      keymap.set('n', 'gR', '<CMD>Glance references<CR>')
      keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
      keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')
    end
  },
}
