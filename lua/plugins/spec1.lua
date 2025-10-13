return {
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        opts = {},
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    {
        'hrsh7th/nvim-cmp', 
        event = "InsertEnter",
        dependencies = { 
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets', 
            'hrsh7th/cmp-nvim-lsp', 
            'hrsh7th/cmp-buffer', 
            'saadparwaiz1/cmp_luasnip', 
            'windwp/nvim-autopairs',
        },
        config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
            require('luasnip').filetype_extend('typescriptreact', {'html'})
            require('luasnip').filetype_extend('typescriptreact', {'javascript', 'typescript'})
        end,
    },
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    javascript = { "prettier" },
                    typescript = { "prettier" },
                    javascriptreact = { "prettier" },
                    typescriptreact = { "prettier" },
                    css = { "prettier" },
                    html = { "prettier" },
                    json = { "prettier" },
                    -- Add other file types as needed
                },
                format_on_save = {
                    lsp_format = "fallback",
                    timeout_ms = 500,
                },
            })
        end,
    },
}    
