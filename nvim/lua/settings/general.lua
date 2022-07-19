local set     = vim.opt -- use like usual set
local global  = vim.g   -- a table representing global variables
local cmd     = vim.cmd -- use normal vim commands

global.mapleader = " "
global.syntax = true

set.number =true
set.relativenumber =true
set.mouse ="a"
set.hidden =true
set.wrap =false
set.encoding ="utf-8"
set.fileencoding ="utf-8"
set.pumheight =10
set.cmdheight =1
-- set.iskeyword
set.splitbelow =true
set.splitright =true
-- set.t_Co =256
set.conceallevel =0
set.tabstop =2
set.showtabline =2
set.smarttab =true
set.shiftwidth =2
set.expandtab =true
set.autoindent =true
-- set.laststatus =0
set.showmode = true
set.backup =false
set.writebackup =false
set.updatetime =300
set.timeoutlen =500
set.clipboard ="unnamedplus"
set.hlsearch =true
set.title =true
set.titlestring ="%<%F%=%1%L - nvim"
set.undodir = vim.fn.stdpath "cache" .. "/undo"
set.undofile =true
set.signcolumn ="yes"
set.cursorline =true
set.spell =false
set.spelllang ="en"
set.scrolloff =8
set.sidescrolloff =8
set.smartcase =true
set.termguicolors =true

cmd('colorscheme monokai_soda')
