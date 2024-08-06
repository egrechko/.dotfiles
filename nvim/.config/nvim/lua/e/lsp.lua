-- This file is used to configure language servers I have installed locally on my machine. I am not using mason to install language servers.

-- Rust Analyzer LSP Support
-- Required: rust-analyzer
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

-- Lua LSP Support
-- Required: lua-language-server
-- Future reference: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
require('lspconfig').lua_ls.setup {
	on_init = function(client)
	    local path = client.workspace_folders[1].name
	    if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
	      return
	    end

	    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
	      runtime = {
	        -- Tell the language server which version of Lua you're using
	        -- (most likely LuaJIT in the case of Neovim)
	        version = 'LuaJIT'
	      },
	      -- Make the server aware of Neovim runtime files
	      workspace = {
	        checkThirdParty = false,
	        library = {
	          vim.env.VIMRUNTIME
	          -- Depending on the usage, you might want to add additional paths here.
	          -- "${3rd}/luv/library"
	          -- "${3rd}/busted/library",
	        }
	        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
	        -- library = vim.api.nvim_get_runtime_file("", true)
	      }
	    })
	end,
	settings = {
	  Lua = {}
	}
}

-- Bash LSP Support lol
-- Required: bash-language-server
require('lspconfig').bashls.setup{}

-- Javascript LSP Support
-- Required: vscode-lang-servers-extracted
-- not attaching to .js buffers
-- need to create a eslint.config.js or .eslintrc file in the root of a JS project
require('lspconfig').eslint.setup {
    on_attach = function(client, bufnr)
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end,
}

-- Dockerfile LSP Support
-- Required: docker-langserver
require("lspconfig").dockerls.setup {}
