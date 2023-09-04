require('plugins')


-- all the sensible settings
vim.cmd([[
let g:deoplete#enable_at_startup = 1
set tabstop=4
set shiftwidth=4
set expandtab
]])

-- auto recompile plugins when edited 
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd('colorscheme base16-nord')
require('nvim-autopairs').setup{}
require('lualine').setup {}

-- keybinds
vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })


vim.cmd([[
tnoremap <Esc> <C-\><C-n>
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
command! -nargs=* T split | terminal <args>
command! -nargs=* VT vsplit | terminal <args>
]])
