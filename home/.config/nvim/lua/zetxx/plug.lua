-- https://github.com/junegunn/vim-plug
local vim = vim
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
  vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  vim.o.runtimepath = vim.o.runtimepath
  vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end


local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plug/')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
-- Plug('neovim/nvim-lspconfig')
Plug('ray-x/go.nvim')
--Plug('ray-x/guihua.lua')
Plug('ray-x/starry.nvim')
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')
Plug('nvim-neotest/nvim-nio')
Plug('theHamsta/nvim-dap-virtual-text')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
Plug('nvim-telescope/telescope-dap.nvim')

--Plug('hrsh7th/cmp-nvim-lsp')
--Plug('hrsh7th/cmp-buffer')
--Plug('hrsh7th/cmp-path')
--Plug('hrsh7th/cmp-cmdline')
--Plug('hrsh7th/nvim-cmp')

Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && npx --yes yarn install' })
Plug('mbbill/undotree')

-- LSP
Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('mhartington/formatter.nvim')

vim.call('plug#end')
