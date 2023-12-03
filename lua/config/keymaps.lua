local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", {
    noremap = true,
    silent = true
})
keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>", {
    noremap = true,
    silent = true
})
keymap.set("n", "<leader>f", ":NvimTreeFindFile<CR>", {
    noremap = true,
    silent = true
})

-- Pane Navigation
keymap.set("n", "<C-PageUp>", "<C-w>h", opts) -- Move to left pane
keymap.set("n", "<C-PageDown>", "<C-w>l", opts) -- Move to right pane

keymap.set("n", "<C-j>", "<C-w>j", opts) -- Move to bottom pane
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Move to top pane
-- Close current pane with Ctrl + w
keymap.set("n", "<C-w>", ":q<CR>", {
    noremap = true,
    silent = true
})

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split vertically
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split horizontally
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle maximized window

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {
    noremap = false
})
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", {
    noremap = false
})

