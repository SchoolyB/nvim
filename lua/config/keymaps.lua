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

-- -- Pane Navigation
keymap.set("n", "<C-PageUp>", "<C-w>h", opts) -- Move to left pane
keymap.set("n", "<C-PageDown>", "<C-w>l", opts) -- Move to right pane

keymap.set("n", "<C-j>", "<C-w>j", opts) -- Move to bottom pane
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Move to top pane
-- Close current pane with Ctrl + w
keymap.set("n", "<C-w>", ":q<CR>", {
    noremap = true,
    silent = true
})

-- Resize with ijkl
keymap.set("n", "<C-i>", ":resize -2<CR>", opts)
keymap.set("n", "<C-k>", ":resize +2<CR>", opts)
keymap.set("n", "<C-l>", ":vertical resize -2<CR>", opts)
keymap.set("n", "<C-j>", ":vertical resize +2<CR>", opts)

-- Move text up and down in normal mode
keymap.set("n", "<A-Up>", ":m .-2<CR>==", opts)
keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)

-- Window Management
keymap.set("n", "<C-S-PageUp>", ":vsplit<CR>", opts) -- Split vertically
keymap.set("n", "<C-S-PageDown>", ":split<CR>", opts) -- Split horizontally
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

-- Saving
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {
    noremap = false
})
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', {
    noremap = false
})

-- Redoing Changes
vim.api.nvim_set_keymap('n', '<C-y>', ':redo<cr>', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('i', '<C-y>', '<Esc>:redo<CR>i', {
    noremap = true,
    silent = true
})

-- Undoing Changes
vim.api.nvim_set_keymap('i', '<C-z>', '<C-g>u<C-o>u', {
    noremap = false
})

vim.api.nvim_set_keymap('n', '<C-z>', '<C-g>u<C-o>u', {
    noremap = false
})

-- Copying and Pasting
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', {
    noremap = true,
    silent = true
})

-- Visual mode mappings
vim.api.nvim_set_keymap("x", "<C-c>", '"+y', {
    noremap = true,
    silent = true
}) -- Copy to clipboard
vim.api.nvim_set_keymap("x", "<C-v>", '"+p', {
    noremap = true,
    silent = true
}) -- Paste from clipboard

-- Save and quit
vim.api.nvim_set_keymap("n", "<C-q>", ":wq<CR>", {
    noremap = true,
    silent = true
})

-- Select entire file in insert mode with Ctrl+a
-- Select entire file in normal mode with Ctrl+a
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", {
    noremap = true,
    silent = true
})

-- delete 
-- Map delete key to backspace in insert mode
-- Map Backspace key to delete characters in normal mode
vim.api.nvim_set_keymap("n", "<BS>", "x", {
    noremap = true,
    silent = true
})

-- Click space twice to enter insert mode
vim.api.nvim_set_keymap('n', '<Space><Space>', 'i', {
    noremap = true
})
