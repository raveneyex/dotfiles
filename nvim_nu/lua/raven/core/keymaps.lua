vim.g.mapleader = " "

local keymap = vim.keymap

-- exit insert mode with "JK"
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- clear search highlights with "space nh"
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clears search highlights" })
-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>tn", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer", noremap = true, silent = true }) -- go to next buffer
keymap.set("n", "<leader>tp", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer", noremap = true, silent = true }) -- go to previous buffer
keymap.set("n", "<leader>txx", "<cmd>bd<CR>", { desc = "Close buffer", noremap = true, silent = true }) -- close current buffer
keymap.set("n", "<leader>txa", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers", noremap = true, silent = true }) -- close other buffers

