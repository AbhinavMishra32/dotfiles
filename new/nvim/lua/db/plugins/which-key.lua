return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
    opts = {
        preset = "helix",
    },
    config = function(_, opts)
        require("which-key").setup(opts)
        require("which-key").add({
            { "<leader>b", group = "buffers" },
            { "<leader>s", group = "split" },
            {"<leader>f", group = "find" },
        })
    end,
}
