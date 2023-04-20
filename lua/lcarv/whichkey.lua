lvim.builtin.which_key.mappings["b"] = { "<cmd>Telescope buffers<cr>", "Buffers" }
lvim.builtin.which_key.mappings["v"] = { "<cmd>vsplit<cr>", "vsplit" }
lvim.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<cr>", "nohl" }
lvim.builtin.which_key.mappings["q"] = { '<cmd>lua require("lcarv.functions").smart_quit()<CR>', "Quit" }
lvim.builtin.which_key.mappings["/"] = { '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', "Comment" }
-- lvim.builtin.which_key.mappings["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["gy"] = "Link"
lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}
lvim.builtin.which_key.mappings["a"] = {
  name = "[AI] ChatGPT",
  c = { "<cmd>NeoAIToggle<cr>", "Toggle Chat" },
  p = { "<cmd>put c<cr>", "Paste Code" },
  P = { "<cmd>put g<cr>", "Paste Response" },
  B = { [[:NeoAIInject ]], "In Buffer Response"},
  b = { ":NeoAIInjectCode", "In Buffer Code Response"},
}
lvim.builtin.which_key.vmappings["a"] = {
  name = "[AI] ChatGPT",
  c = { "<cmd>NeoAIContext<cr>", "Chat Context" },
  i = { "<cmd>NeoAIInjectContext<cr>", "Generate Context" },
  g = { "<cmd>NeoAIInjectContextCode<cr>", "Generate Code" },
}

lvim.builtin.which_key.mappings["x"] = {
  name = "Debug",
  b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
  c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
  i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
  o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
  O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
  r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
  l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
  u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
  x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
}

lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
  s = { "<cmd>Telescope grep_string<cr>", "Find String" },
  h = { "<cmd>Telescope help_tags<cr>", "Help" },
  H = { "<cmd>Telescope highlights<cr>", "Highlights" },
  i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
  l = { "<cmd>Telescope resume<cr>", "Last Search" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
}
lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  l = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<cr>", "Lazygit" },
  g = { "<cmd>Neogit<cr>", "Neogit" },
  j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
  b = { "<cmd>GitBlameToggle<cr>", "Blame" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
  s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  u = {
    "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
    "Undo Stage Hunk",
  },
  n = { ":!git checkout -b ", "Checkout New Branch" },
  o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  B = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  f = { "<cmd>Telescope git_bcommits<cr>", "Checkout buffer commit" },
  d = {
    "<cmd>Gitsigns diffthis HEAD<cr>",
    "Diff",
  },
  G = {
    name = "Gist",
    a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
    d = { "<cmd>Gist -d<cr>", "Delete" },
    f = { "<cmd>Gist -f<cr>", "Fork" },
    g = { "<cmd>Gist -b<cr>", "Create" },
    l = { "<cmd>Gist -l<cr>", "List" },
    p = { "<cmd>Gist -b -p<cr>", "Create Private" },
  },
}
lvim.builtin.which_key.mappings["l"] = {
  name = "LSP",
  a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
  -- c = { "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Get Capabilities" },
  -- c = { "<cmd>lua require('lsp').server_capabilities()<cr>", "Get Capabilities!" },
  d = { "<cmd>TroubleToggle<cr>", "Diagnostics" },
  w = {
    "<cmd>Telescope lsp_workspace_diagnostics<cr>",
    "Workspace Diagnostics",
  },
  f = { "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", "Format" },
  F = { "<cmd>LspToggleAutoFormat<cr>", "Toggle Autoformat" },
  i = { "<cmd>LspInfo<cr>", "Info" },
  h = { "<cmd>lua require('lsp-inlayhints').toggle()<cr>", "Toggle Hints" },
  H = { "<cmd>IlluminateToggle<cr>", "Toggle Doc HL" },
  I = { "<cmd>LspInstallInfo<cr>", "Installer Info" },
  j = {
    "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>",
    "Next Diagnostic",
  },
  k = {
    "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>",
    "Prev Diagnostic",
  },
  v = { "<cmd>lua require('lsp_lines').toggle()<cr>", "Virtual Text" },
  l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
  o = { "<cmd>SymbolsOutline<cr>", "Outline" },
  q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
  r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  R = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
  s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
  S = {
    "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
    "Workspace Symbols",
  },
  t = { '<cmd>lua require("lcarv.functions").toggle_diagnostics()<cr>', "Toggle Diagnostics" },
  u = { "<cmd>LuaSnipUnlinkCurrent<cr>", "Unlink Snippet" },
}
lvim.builtin.which_key.mappings["t"] = {
  name = "Tab",
  t = {
    "<cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<cr>",
    "Find Tab",
  },
  n = { "<cmd>tabnew %<cr>", "New Tab" },
  c = { "<cmd>tabclose<cr>", "Close Tab" },
  o = { "<cmd>tabonly<cr>", "Only Tab" },
}
-- lvim.builtin.cmp.enabled = false
lvim.builtin.which_key.mappings["o"] = {
  name = "Options",
  c = { "<cmd>lua lvim.builtin.cmp.active = false<cr>", "Completion off" },
  C = { "<cmd>lua lvim.builtin.cmp.active = true<cr>", "Completion on" },
  r = { ":Lab code run<cr>", "Lab Code Run" },
  s = { ":Lab code stop<cr>", "Lab Code Stop" },
  l = { ":Lab code panel<cr>", "Lab Code Panel" },
  -- w = { '<cmd>lua require("lcarv.functions").toggle_option("wrap")<cr>', "Wrap" },
  -- r = { '<cmd>lua require("lcarv.functions").toggle_option("relativenumber")<cr>', "Relative" },
  -- l = { '<cmd>lua require("lcarv.functions").toggle_option("cursorline")<cr>', "Cursorline" },
  -- s = { '<cmd>lua require("lcarv.functions").toggle_option("spell")<cr>', "Spell" },
  -- t = { '<cmd>lua require("lcarv.functions").toggle_tabline()<cr>', "Tabline" },
}

-- lvim.builtin.which_key.mappings["n"] = {
--   name = "Notes",
--   c = { "<cmd>Telekasten show_calendar<cr>", "Calendar" },
--   n = { "<cmd>Telekasten new_note<cr>", "Note" },
--   f = { "<cmd>Telekasten find_notes<cr>", "Find" },
--   F = { "<cmd>Telekasten find_daily_notes<cr>", "Find Journal" },
--   j = { "<cmd>Telekasten goto_today<cr>", "Journal" },
--   p = { "<cmd>Telekasten panel<cr>", "Panel" },
--   t = { "<cmd>Telekasten toggle_todo<cr>", "Toggle Todo" },
-- }
lvim.builtin.which_key.mappings[";"] = nil

lvim.builtin.which_key.mappings[";"] = nil
lvim.builtin.which_key.mappings["d"] = nil

-- TODO: refactor code on keymaps, which-key and lvim.keys
lvim.keys.visual_mode["<leader>p"] = [["_dP]]
lvim.keys.normal_mode["<leader>y"] = [["+y]]
lvim.keys.visual_mode["<leader>y"] = [["+y]]
lvim.keys.normal_mode["<leader>Y"] = [["+Y]]
lvim.keys.normal_mode["<leader>d"] = [["_d]]
lvim.keys.visual_mode["<leader>d"] = [["_d]]
lvim.keys.normal_mode["<leader>s"] = false
-- lvim.keys.normal_mode['<leader>s'] = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
lvim.builtin.which_key.mappings["d"] = { "Delete to Void" }
lvim.builtin.which_key.mappings["y"] = { "Copy to Clipboard" }
lvim.builtin.which_key.mappings["Y"] = { "Copy line to Clipboard" }
lvim.builtin.which_key.mappings["p"] = { "Paste from Clipboard" }
-- lvim.builtin.which_key.mappings["c"] = nil
-- lvim.builtin.which_key.mappings["L"] = nil
lvim.builtin.which_key.mappings["s"] = nil
-- lvim.builtin.which_key.mappings["w"] = nil
lvim.lsp.buffer_mappings.insert_mode["<C-h>"] = { vim.lsp.buf.signature_help, "Signature help" }

local m_opts = {
  mode = "n", -- NORMAL mode
  prefix = "m",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local m_mappings = {
  a = { "<cmd>silent BookmarkAnnotate<cr>", "Annotate" },
  c = { "<cmd>silent BookmarkClear<cr>", "Clear" },
  b = { "<cmd>silent BookmarkToggle<cr>", "Toggle" },
  m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Add2Harpoon" },
  -- ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
  -- [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
  -- l = { "<cmd>lua require('lcarv.bfs').open()<cr>", "Buffers" },
  j = { "<cmd>silent BookmarkNext<cr>", "Next" },
  s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
  k = { "<cmd>silent BookmarkPrev<cr>", "Prev" },
  S = { "<cmd>silent BookmarkShowAll<cr>", "Preview" },
  -- s = {
  --   "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
  --   "Show",
  -- },
  x = { "<cmd>BookmarkClearAll<cr>", "Clear All" },
  h = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
}

which_key.register(m_mappings, m_opts)
