vim.cmd("set mouse=a") 
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set scrolloff=8")
vim.g.mapleader = " " 
vim.opt.incsearch = true

-- Allows to use J and K to move a Selected Visual Block up and down.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allows your cursor to be stayed in the front.
vim.keymap.set("n", "J", "mzJ`z")

-- Allows CTrl-D and ctrl-U to do half page jump, but your cursor will stay in place.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Allows search terms to stay in the middle 
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")

-- Makes copy paste better  
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Creates copy into paste into system CLI  
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- use Ctrl+C to get out of insert mode  
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Allows to do find and replace. 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

