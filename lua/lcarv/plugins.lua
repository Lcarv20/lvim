lvim.plugins = {
  -- Colorschemes
  { "RRethy/nvim-base16" },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup {
        -- style = "dark",
        style = "darker",
        -- style = "cool",
        -- style = "deep",
        -- style = "warm",
        -- style = "warmer",
      }
    end,
  },
  { "Mofiqul/vscode.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    },
  },
  "jacoborus/tender.vim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "nyoom-engineering/oxocarbon.nvim",
  "rebelot/kanagawa.nvim",
  "ellisonleao/gruvbox.nvim",
  "LunarVim/synthwave84.nvim",
  "lunarvim/github.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  -- "opalmay/vim-smoothie",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "hrsh7th/cmp-emoji",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  {
    "saecki/crates.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  "MunifTanjim/nui.nvim",
  {
    "Bryley/neoai.nvim",
    cmd = {
      "NeoAI",
      "NeoAIOpen",
      "NeoAIClose",
      "NeoAIToggle",
      "NeoAIContext",
      "NeoAIContextOpen",
      "NeoAIContextClose",
      "NeoAIInject",
      "NeoAIInjectCode",
      "NeoAIInjectContext",
      "NeoAIInjectContextCode",
    },
    keys = {
      { "<leader>ar", desc = "Summarize Text" },
      { "<leader>gG", desc = "Generate Git Message (cautioun w/ price)" },
    },
  },
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
        -- dim = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "nvim-telescope/telescope-media-files.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").on_attach()
    end,
  },
  { "mbbill/undotree" },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  },
  -- {
  --   "codota/tabnine-nvim",
  --   -- event = "InsertEnter",
  --   config = function()
  --     require("tabnine").setup {
  --       disable_auto_comment = true,
  --       accept_keymap = "<Tab>",
  --       dismiss_keymap = "<C-]>",
  --       debounce_ms = 800,
  --       suggestion_color = { gui = "#808080", cterm = 244 },
  --       exclude_filetypes = { "TelescopePrompt" },
  --     }
  --   end,
  --   build = "./dl_binaries.sh",
  -- },
  {
    "tzachar/cmp-tabnine",
    event = "InsertEnter",
    after = "nvim-cmp",
    dependencies = "hrsh7th/nvim-cmp",
    build = "./install.sh",
  },
  "simrat39/symbols-outline.nvim",
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
  },
  {
    "Exafunction/codeium.vim",
    config = function()
      vim.keymap.set("i", "<Tab>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
      vim.keymap.set("i", "<C-j>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true })
      vim.keymap.set("i", "<C-k>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true })
      vim.keymap.set("i", "<C-e>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true })
    end,
  },
}
