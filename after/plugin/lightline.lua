--require('g.lightline').setup({
--    colorscheme = 'wombat',
--})
--

vim.g.lightline = {
    colorscheme = 'one'
    -- in lua, the above line is syntactic sugar for:
    -- ['colorscheme'] = 'catppuccin'
    -- this may be helpful if the option name has a reserved symbol in it like + or -
    -- ['key-here'] = 'value'
}
