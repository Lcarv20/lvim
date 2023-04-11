local M = {}

local wk = require("which-key")

function M.setup(on_attach, capabilities)
  -- M.dap_config()
  require("flutter-tools").setup {
    ui = {
      border = "rounded",
      -- notification_style = 'native' | 'plugin'
    },
    decorations = {
      statusline = {
        -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
        -- this will show the current version of the flutter app from the pubspec.yaml file
        app_version = false,
        -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
        -- this will show the currently running device if an application was started with a specific
        -- device
        device = false,
      }
    },
    dev_log = {
      enabled = true,
      open_cmd = "tabedit", -- command to use to open the log buffer
    },
    debugger = { -- integrate with nvim dap + install dart code debugger
      enabled = true,
      run_via_dap = true, -- use dap instead of a plenary job to run flutter apps
      register_configurations = function(paths)
        --   require("dap").configurations.dart = {
        --     {
        --       type = "dart",
        --       request = "launch",
        --       name = "Launch flutter",
        --       dartSdkPath = os.getenv('HOME') .. "/flutter/bin/cache/dart-sdk/",
        --       flutterSdkPath = os.getenv('HOME') .. "/flutter",
        --       program = "${workspaceFolder}/lib/main.dart",
        --       cwd = "${workspaceFolder}",
        --     }
        --   }
        --   require("dap.ext.vscode").load_launchjs()
        -- end,
        M.dap_config()
      end
    },
    widget_guides = {
      enabled = true,
    },
    lsp = {
      color = { -- show the derived colours for dart variables
        enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
        background = false, -- highlight the background
        background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
        foreground = false, -- highlight the foreground
        virtual_text = true, -- show the highlight using virtual text
        virtual_text_str = "■", -- the virtual text character to highlight
      },
      on_attach = on_attach,
      capabilities = capabilities, -- e.g. lsp_status capabilities
      --- OR you can specify a function to deactivate or change or control how the config is created
      -- see the link below for details on each option:
      -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
      settings = {
        showTodos = true,
        completeFunctionCalls = true,
        -- analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
        renameFilesWithClasses = "prompt", -- "always"
        enableSnippets = true,
      }
    }
  }
  require("telescope").load_extension("flutter")

  -- setup which-key debug keymaps if debugging exists
  wk.register({
    C = {
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
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = true,
  }
  )
end

function M.dap_config()
  local dap = require('dap')
  -- dap.adapters.dart = {
  --   type = "executable",
  --   command = "/Users/lcarv/.config/nvl/data/nvim/mason/packages/dart-debug-adapter/dart-debug-adapter",
  --   args = { "flutter" }
  -- }
  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch flutter",
      dartSdkPath = os.getenv('HOME') .. "/flutter/bin/cache/dart-sdk/",
      flutterSdkPath = os.getenv('HOME') .. "/flutter",
      program = "${workspaceFolder}/lib/main.dart",
      cwd = "${workspaceFolder}",
    }
  }
end

return M

