local config = function()
    require'nvim-treesitter.configs'.setup {
        indent = {
            enable = true
        },
        autotag = {
            enable = true
        },
        ensure_installed = {"c", "cpp", "lua", "vim", "vimdoc", "json", "bash", "yaml", "html", "css", "javascript",
                            "typescript", "svelte", "gitignore", "markdown"},
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true
        }
    }

end

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = config
}
