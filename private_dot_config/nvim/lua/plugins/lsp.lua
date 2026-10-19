return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                -- Build for your no_std target (adjust as needed)
                target = "x86_64-unknown-none", -- or your specific target
                noDefaultFeatures = true,
                -- If you use alloc but not std:
                -- features = { "alloc" },
              },
              checkOnSave = {
                -- Use clippy, and pass no_std-friendly flags
                command = "clippy",
                extraArgs = {
                  "--target",
                  "thumbv7em-none-eabihf",
                  "--",
                  "-A",
                  "clippy::needless_return",
                },
              },
              rustfmt = {
                extraArgs = {},
              },
              -- Disable proc-macro expansion issues common in no_std
              procMacro = {
                enable = true,
              },
              diagnostics = {
                enable = true,
                -- Suppress false positives common in no_std contexts
                disabled = { "unresolved-proc-macro" },
              },
            },
          },
        },
      },
    },
  },
}
