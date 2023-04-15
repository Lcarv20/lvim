require("cmp").setup {
  sources = {
    {
      name = "cmp-clippy",
      options = {
        model = "EleutherAI/gpt-neo-2.7B", -- check code clippy vscode repo for options
        key = "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", -- huggingface.co api key
      },
    },
  },
}
