local lsp = require('lspconfig')
 require('lspconfig').clangd.setup {
         cmd = { vim.env.HOME .. "/.esp/clangd", "--enable-config",  "--background-index", "--query-driver=" .. vim.env.HOME .. "/.espressif/tools/xtensa-esp32-elf/esp-2022r1-11.2.0/**/bin/xtensa-esp32-elf-*"},
         root_dir = lsp.util.root_pattern('build/compile_commands.json', '.git'),
         }
