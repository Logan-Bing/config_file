local keymap = vim.keymap.set

keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
keymap("n", "<leader>a", "<cmd>qa<cr>", { desc = "Quit session" }) 
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
keymap("n", "<leader>x", "<cmd>lua vim.diagnostic.open_float()<CR>")
keymap("i","jj", "<Esc>")

-- split
keymap("n", "<leader>|", ":vsplit<CR>")
keymap("n", "<leader>-", ":split<CR>")

-- navigation entre fenêtres
keymap("n", "<C-l>", "<C-w>l")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-h>", "<C-w>h")

-- Tree
keymap("n", "<leader>e","<cmd>NvimTreeOpen<CR>")

-- Telescope
keymap('n', '<leader><leader>', function()
  require('telescope.builtin').find_files()
end, { desc = 'Telescope find files' })

keymap('n', '<leader>/', function()
  require('telescope.builtin').live_grep()
end, { desc = 'Telescope live grep' })

keymap('n', '<leader>fb', function()
  require('telescope.builtin').buffers()
end, { desc = 'Telescope buffers' })

keymap('n', '<leader>fh', function()
  require('telescope.builtin').help_tags()
end, { desc = 'Telescope help tags' })
