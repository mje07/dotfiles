vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Nerd font
vim.g.have_nerd_font = true
-- Mouse support
vim.opt.mouse = 'a'
-- Don't show mode
vim.opt.showmode = false
-- System clipboard sync
vim.opt.clipboard = 'unnamedplus'
-- Case insensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Cursor line
vim.opt.cursorline = true
-- Line numbers
vim.wo.number = true
-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.6',
  },
})
-- Setting colorscheme
vim.cmd[[colorscheme dracula]]
