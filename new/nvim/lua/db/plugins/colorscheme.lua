return { 
    {
        "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavor = "frapper", -- latte, frappe, macchiato, mocha
                transparent_background = false,
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

             vim.cmd("colorscheme catppuccin")
        end
    },
}
