local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

local luasnip = require("luasnip")
luasnip.filetype_extend("dart", { "flutter" })

print("Flutter file runs")
-- setup which-key debug keymaps if debugging exists
wk.register({
  j = {
    name = "Flutter",
    c = { require('telescope').extensions.flutter.commands, "All commands" },
    s = { "<cmd>FlutterRun<CR>", "Flutter Run" },
    e = { "<cmd>FlutterEmulators<CR>", "Flutter Emulators" },
    d = { "<cmd>FlutterDevices<CR>", "Flutter Devices" },
    r = { "<cmd>FlutterReload<CR>", "Flutter Reload" },
    R = { "<cmd>FlutterRestart<CR>", "Flutter Restart" },
    q = { "<cmd>FlutterQuit<CR>", "Flutter Quit" },
    D = { "<cmd>FlutterDetach<CR>", "Flutter Detatch" },
    o = {
      name = "Flutter Outline",
      o = { "<cmd>FlutterOutlineToggle<CR>", "Outline Toggle" },
      t = { "<cmd>FlutterOutlineOpen<CR>", "Outline Open" },
    },
    t = {
      name = "DevTools",
      a = { "<cmd>FlutterDevToolsActivate<CR>", "DevTools Activate" },
      t = { "<cmd>FlutterDevTools<CR>", "DevTools" },
      p = { "<cmd>FlutterCopyProfilerUrl<CR>", "Copy Profile URL" },
      r = { "<cmd>FlutterLspRestart<CR>", "Lsp Restart" },
      s = { "<cmd>FlutterSuper<CR>", "Go to Super Class" },
      R = { "<cmd>FlutterReanalyze<CR>", "Flutter Reanalizer" },
    },
  },
}, {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}
)
require('flutter-tools').setup {
  -- flutter_path = "~/development/flutter",
  fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
  ui = {
    -- the border type to use for all floating windows, the same options/formats
    -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
    border = "rounded",
    -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
    -- please note that this option is eventually going to be deprecated and users will need to
    -- depend on plugins like `nvim-notify` instead.
    notification_style = "plugin",
  },
  decorations = {
    statusline = {
      -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
      -- this will show the current version of the flutter app from the pubspec.yaml file
      app_version = true,
      -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
      -- this will show the currently running device if an application was started with a specific
      -- device
      device = true,
    },
  },
  outline = {
    open_cmd = "30vnew", -- command to use to open the outline buffer
    auto_open = false, -- if true this will open the outline automatically when it is first populated
  },
  debugger = {
    enabled = true,
    run_via_dap = true,
    register_configurations = function(_)
      local dap = require("dap")
      -- dap.adapters.dart = {
      -- 	type = "executable",
      -- 	command = "node",
      -- 	args = { debugger_path, "flutter" },
      -- }
      dap.set_log_level("TRACE")
      dap.configurations.dart = {}
      require("dap.ext.vscode").load_launchjs()
    end,
  },
  dev_log = {
    enabled = false,
    -- open_cmd = "tabedit", -- command to use to open the log buffer
  },
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "■", -- the virtual text character to highlight
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
      enableSdkFormatter = true,
    },
  },

}
