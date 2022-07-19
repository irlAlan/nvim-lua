function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, {noremap =true, silent =true})
end

function nmap(shortcut, command)
  map("n", shortcut, command)
end

function imap(shortcut, command)
  map("i", shortcut, command)
end

-- resize windows
nmap("<M-j>","<cmd>resize -2<CR>")
nmap("<M-k>","<cmd>resize +2<CR>")
nmap("<M-h>","<cmd>vertical resize -2<CR>")
nmap("<M-l>","<cmd>vertical resize +2<CR>")

-- easy esacape
imap("jk","<Esc>")
imap("kj","<Esc>")
imap("jj","<Esc>")
imap("kk","<Esc>")

-- moving lines up and down for some reason these bring up the man page if on a keyword
nmap("<C-S-Up","<cmd>m-2<CR>")
nmap("<S-Down","<cmd>m+<CR>")
imap("<S-Up","<cmd>m-2<CR>")
imap("<S-Down","<cmd>m+<CR>")

-- quick caps
imap("<c-u>", "<ESC>viwUi")
nmap("<c-u>", "viwUi<ESC>")

-- tab in general mode will mode to text buffer
nmap("<TAB>", "<cmd>bnext<CR>")
-- shift-tab will go back
nmap("<S-TAB>", "<cmd>bprevious<CR>")

-- Tab completion
-- vim.cmd('inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"')

-- better tabbing
map("v", "<","<gv")
map("v", ">",">gv")

nmap("<C-h>","<C-w>h")
nmap("<C-j>","<C-w>j")
nmap("<C-k>","<C-w>k")
nmap("<C-l>","<C-w>l")
