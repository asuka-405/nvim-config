vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex)

-- Save
map("n", "<leader>w", vim.cmd.W)

-- Quit
map("n", "<leader>q", vim.cmd.Q)

-- Quit all
map("n", "<leader>Q", vim.cmd.QA)

-- Don't yank with x
map("n", 'x', '"_x')

-- Increment/ Decrement
map("n", '+', '<C-a>')
map("n", '-', '<C-x>')
