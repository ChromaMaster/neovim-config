local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup_servers({
    'cmake', -- Cmake
    'bashls', -- Bash
    'clangd', -- C/C++
    'jedi_language_server', -- Python
	'rust_analyzer', -- Rust
	'gopls', -- Go
})

lsp.setup()

-- The plugin responsible for autocompletion is nvim-cmp
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup()



