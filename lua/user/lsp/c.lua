local lsp = require('lspconfig')
 require('lspconfig').clangd.setup {
         cmd = { "/Users/benni/.esp/clangd", "--enable-config",  "--background-index", "--query-driver=/Users/benni/.espressif/tools/xtensa-esp32-elf/esp-2022r1-11.2.0/**/bin/xtensa-esp32-elf-*"},
         root_dir = lsp.util.root_pattern('build/compile_commands.json', '.git'),
         }
