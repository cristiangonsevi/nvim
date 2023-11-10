local lsp_attach = require "custom.lsp.attach"
local lsp_flags = require "custom.lsp.flags"

return function(ops)
  local config = {
    on_attach = lsp_attach,
    flags = lsp_flags,
  }
  if vim.fn.executable "json-languageserver" == 1 then
    config.cmd = { "json-languageserver", "--stdio" }
  end

  return vim.tbl_extend("force", config, ops)
end
