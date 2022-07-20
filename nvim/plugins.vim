call plug#begin()
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'

 Plug 'tpope/vim-surround'
 Plug 'windwp/nvim-autopairs'

 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'nvim-treesitter/nvim-treesitter'
 Plug 'preservim/nerdcommenter'

 Plug 'nvim-lualine/lualine.nvim'
 Plug 'kyazdani42/nvim-web-devicons'

 Plug 'morhetz/gruvbox'
call plug#end()

lua << EOF
require("nvim-autopairs").setup {}
require'nvim-treesitter.configs'.setup {
    highlight = { enable = true },
}
require('lualine').setup {
    options = {theme = "gruvbox_dark"}
}
EOF
