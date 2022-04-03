function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

-- Normal mode
function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- Insert mode
function imap(shortcut, command)
  map('i', shortcut, command)
end

-- Visual mode
function vmap(shortcut, command)
  map('v', shortcut, command)
end

-- remap <Space> as <Leader> key
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- better window navigation
nmap("<C-h>", "<C-w>h")
nmap("<C-j>", "<C-w>j")
nmap("<C-k>", "<C-w>k")
nmap("<C-l>", "<C-w>l")

-- resize with arrows
nmap("<Up>", ":resize +2<CR>")
nmap("<Down>", ":resize -2<CR>")
nmap("<Left>", ":vertical resize -2<CR>")
nmap("<Right>", ":vertical resize +2<CR>")

-- navigate buffers and tabs
nmap("J", ":bprevious<CR>")
nmap("K", ":bnext<CR>")
nmap("tj", ":bprevious<CR>")
nmap("tk", ":bnext<CR>")
nmap("th", ":tabfirst<CR>")
nmap("tl", ":tablast<CR>")
nmap("tc", ":tabclose<CR>")
nmap("tn", ":tabnew<CR>")
nmap("<C-n>", ":tabnew<CR>")

-- Insert --
-- press jk fast to enter imap("jk", "<ESC>")

-- better undo
imap("<c-u>", "<c-g>u<c-u>")
imap("<c-w>", "<c-g>u<c-w>")

-- Visual --
-- stay in indent mode after indenting
vmap("<", "<gv")
vmap(">", ">gv")

-- move text up and down
-- https://vim.fandom.com/wiki/Moving_lines_up_or_down
vmap("<S-j>", ":m '>+1<CR>gv=gv")
vmap("<S-k>", ":m '<-2<CR>gv=gv")
-- https://youtu.be/435-amtVYJ8?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ&t=687
vmap("p", '"_dP')

-- Plugins --
nmap("<C-f>", "<cmd>Telescope find_files<CR>")
-- nmap("<leader>ff", "<cmd>Telescope find_files<CR>")
-- nmap("<leader>fb", "<cmd>Telescope buffers<CR>")
-- nmap("<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
nmap("<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes'))<cr>")
nmap("<leader>ft", "<cmd>Telescope live_grep<cr>")
nmap("<leader>e", "<cmd>NvimTreeToggle<CR>")
