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
    }
}
