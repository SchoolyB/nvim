return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = {
        vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]),
        sort = {
            folders_first = true,
            sorter = "case_sensitive"
        },
        view = {
            width = 30
        },
        filters = {
            dotfiles = true
        }

    }

}

