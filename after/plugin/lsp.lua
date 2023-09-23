local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {
    'lua_ls', -- Lua
    'cmake', -- Cmake
    'bashls', -- Bash
    'clangd', -- C/C++
    'jedi_language_server', -- Python
	'rust_analyzer', -- Rust
	'gopls', -- Go
  },
  handlers = {
    lsp.default_setup,
  }
})

lsp.setup()

-- The plugin responsible for autocompletion is nvim-cmp
local cmp = require('cmp')

cmp.setup()

