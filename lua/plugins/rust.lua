return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              diagnostics = {
                enable = true,
                disabled = { "unresolved-proc-macro" },
                enableExperimental = true,
              },
              cargo = {
                allFeatures = true,
                autoreload = true,
                targetDir = "target/deploy",
              },
              checkOnSave = {
                command = "clippy",
              },
            },
          },
        },
      },
    },
  },
}
