require("nvim-tree").setup {
    view = {
        width = 30,
        side = "left",
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    }, 
}
