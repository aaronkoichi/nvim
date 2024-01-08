vim.cmd("set mouse=a")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set scrolloff=8")
vim.g.mapleader = " "
vim.opt.incsearch = true

vim.opt.guicursor = ""
-- Allows to use J and K to move a Selected Visual Block up and down.
vim.keymap.set("v", "<S-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-up>", ":m '<-2<CR>gv=gv")

-- Allows your cursor to be stayed in the front.
vim.keymap.set("n", "J", "mzJ`z")

-- Allows CTrl-D and ctrl-U to do half page jump, but your cursor will stay in place.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Allows search terms to stay in the middle
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")

-- Makes copy paste better
vim.keymap.set("x", "<leader>p", '"_dP')

-- Creates copy into paste into system CLI
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Makes undotree to be able to undo after a long long time.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- use Ctrl+C to get out of insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Allows to do find and replace.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Split Screen
vim.keymap.set("n", "<leader>ss", ":split<Return>")
vim.keymap.set("n", "<leader>sv", ":vsplit<Return>")

-- Navigate between split screens
vim.keymap.set("n", "<leader><left>", "<C-w>h")
vim.keymap.set("n", "<leader><down>", "<C-w>j")
vim.keymap.set("n", "<leader><up>", "<C-w>k")
vim.keymap.set("n", "<leader><right>", "<C-w>l")

-- delete a word backwards
vim.keymap.set("n", "dw", "vb_d")

-- New tab
vim.keymap.set("n", "<C-PageDown>", ":BufferNext<CR>")
vim.keymap.set("n", "<C-PageUp>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<S-PageDown>", ":BufferMoveNext<CR>")
vim.keymap.set("n", "<S-PageUp>", ":BufferMovePrevious<CR>")
vim.keymap.set("n", "<leader>x", ":BufferClose<CR>")

vim.keymap.set("n", "<leader>tt", ":TroubleToggle<CR>")

-- comment (For comment.lua)
-- vim.keymap.set("n", "<leader>cc", "gcc")
-- vim.keymap.set("n", "<leader>bc", "gbc")
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Open compiler
vim.keymap.set("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

-- Redo last selected option
vim.keymap.set(
	"n",
	"<S-F6>",
	"<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
		.. "<cmd>CompilerRedo<cr>",
	{ noremap = true, silent = true }
)

-- Toggle compiler results
vim.keymap.set("n", "<S-F7>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
