M = {}
lvim.leader = "space"

local opts = { noremap = true, silent = true }
-- For the description on keymaps, I have a function getOptions(desc) which returns noremap=true, silent=true and desc=desc. Then call: keymap(mode, keymap, command, getOptions("some randome desc")

local keymap = vim.keymap.set

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<m-tab>", "<c-6>", opts)
keymap("i", "jj", "<ESC>", opts)

function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, "t", "<m-h>", [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-j>", [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-k>", [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-l>", [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

-- Scroll
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Alignements & highlight searches
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Hold cursor position
keymap("n", "J", "mzJ`z", opts)

keymap("n", "<C-z>", "<cmd>ZenMode<cr>", opts)
keymap("n", "-", ":lua require'lir.float'.toggle()<cr>", opts)
keymap("n", "gx", [[:silent execute '!$BROWSER ' . shellescape(expand('<cfile>'), 1)<CR>]], opts)
keymap("n", "<m-v>", "<cmd>lua require('lsp_lines').toggle()<cr>", opts)

-- lvim.builtin.which_key.mappings["d"] = {
--   name = "ChatGPT",
--   c = { "<cmd>ChatGPT<cr>", "Chat" },
--   a = { "<cmd>ChatGPTActAs<cr>", "Act As" },
--   e = { "<cmd>ChatGPTEditWithInstructions<cr>", "Edit" },
--   r = { "<cmd>ChatRunCustomCodeAction<cr>", "Code Action" },
-- }

-- To add to clipboard
-- keymap("x", "<leader>p", [["_dP]])
-- keymap("n", "Q", "<cmd>Bdelete!<CR>")
-- keymap({ "n", "v" }, "<leader>y", [["+y]])
-- keymap("n", "<leader>Y", [["+Y]])
-- keymap({ "n", "v" }, "<leader>d", [["_d]])
-- keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- keymap("n", "<m-/>", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
-- keymap("x", "<m-/>", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', opts)

vim.cmd [[
  function! QuickFixToggle()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
      copen
    else
      cclose
    endif
  endfunction
]]

M.show_documentation = function()
  local filetype = vim.bo.filetype
  if vim.tbl_contains({ "vim", "help" }, filetype) then
    vim.cmd("h " .. vim.fn.expand "<cword>")
  elseif vim.tbl_contains({ "man" }, filetype) then
    vim.cmd("Man " .. vim.fn.expand "<cword>")
  elseif vim.fn.expand "%:t" == "Cargo.toml" then
    require("crates").show_popup()
  else
    vim.lsp.buf.hover()
  end
end

vim.api.nvim_set_keymap("n", "K", ":lua require('lcarv.keymaps').show_documentation()<CR>", opts)

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"


return M
