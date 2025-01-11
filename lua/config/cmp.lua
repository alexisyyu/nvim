local cmp = require('cmp')
local luasnip = require('luasnip')
local autopairs = require('nvim-autopairs')

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(arg.body)
        end,
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.close(),
    },
    sources = {
        { name = "nvim-lsp" }, 
        { name = "luasnip" }, 
        { name = "buffer" }, 
        { name = "path" }, 
    },
})


autopairs.setup({})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
	'confirm_done',
	cmp_autopairs.on_confirm_done()
)
