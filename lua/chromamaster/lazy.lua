local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Fuzzy finder
    { 'nvim-telescope/telescope.nvim', tag = '0.1.3', dependencies = { 'nvim-lua/plenary.nvim' } },

    -- Theme 
    { 'rose-pine/neovim', name = 'rose-pine' },

    -- Syntax highlighting
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

    -- Jump between opened files
    { 'ThePrimeagen/harpoon', dependencies = { 'nvim-lua/plenary.nvim' } },

    -- See full history of changes
    { 'mbbill/undotree' },

    -- Use git inside nvim
    { 'tpope/vim-fugitive' },

    -- All this is for the lsp
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

    {'williamboman/mason.nvim'},

    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {'hrsh7th/cmp-nvim-lsp'},
        },
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            {'L3MON4D3/LuaSnip'},
        }
    },
    -- until here


    { 'github/copilot.vim', build = ':Copilot setup' }
})
