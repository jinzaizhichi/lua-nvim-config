
--https://github.com/wiliamboman/nvim-lsp-installer


local lsp_installer_servers = require("nvim-lsp-installer.server")
  --WARN: 手动书写LSP 配置文件
  --名称：https://github.com/williamboman/nvim-lsp-installer #available-lsps
  --配置：https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md


  local servers = {
    --语言服务器名称：配置选项
    sumnoko_lua = require("lsp.sumneko_lua"),
    pyright = require("lsp.pyright"),
    tsserver = require("lsp.tsserver"),

  }
