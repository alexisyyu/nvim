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

