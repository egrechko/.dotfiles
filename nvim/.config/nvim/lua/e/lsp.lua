-- This file is used to configure language servers I have installed locally on my machine. I am not using mason to install language servers.
require('lspconfig').rust_analyzer.setup {
  -- Other Configs ...
  settings = {
    ["rust-analyzer"] = {
      -- Other Settings ...
      procMacro = {
        ignored = {
            leptos_macro = {
                -- optional: --
                "component",
                "server",
            },
        },
      },
    },
  }
}

-- TODO
-- 1. Setup Language servers
--  a. Javascript
--  b. Lua
--  c. Bash
