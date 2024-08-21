-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", opts) -- Map Tab to switch to the next buffer
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", opts) -- Map Shift+Tab to switch to the previous buffer
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts) -- Map Ctrl+s to save file in normal mode
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>", opts) -- Map Ctrl+s to save file in insert mode
vim.api.nvim_set_keymap("n", "<C-x>", ":bd<CR>", opts) -- Map Ctrl+x to close the current buffer

