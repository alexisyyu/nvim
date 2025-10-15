require("mini.surround").setup(
    {
        mappings = {
            add = '<leader>sa',
            delete = '<leader>sd',
            find = '<leader>sf',
            find_left = '<leader>sF',
            highlight = '<leader>sh',
            replace = '<leader>sr',
        }
    }
)

require("mini.comment").setup({
    mappings = {
        comment = '<leader>/',
        comment_line = '<leader>/',
        comment_visual = '<leader>/',
    }
})


require("mini.files").setup({
    mappings = {
    }
})

require("mini.pairs").setup({
    mappings = {
    }
})

require("mini.git").setup({
    mappings = {
    }
})
