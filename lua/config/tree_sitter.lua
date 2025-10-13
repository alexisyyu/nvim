require('nvim-treesitter.configs').setup({
    ensure_installed = {
	'html', 'css', 'javascript', 'typescript', 'tsx', 'markdown', 'sql'
    },
    highlit = { enable = true }, 
})
