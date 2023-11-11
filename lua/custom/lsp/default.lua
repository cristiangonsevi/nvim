return {
  mason = {
    enable = true,
    auto_install = true,
  },
  servers = {
    emmet_ls = { enable = true },
    gopls = { enable = true },
    html = { enable = true },
    jsonls = { enable = true },
    lua_ls = { enable = true, neodev = true },
    svelte = { enable = true },
    tailwindcss = { enable = true, filetypes = {"blade", "html", "svelte"} },
    tsserver = { enable = true },
  },
  default_options = function (options)
    return vim.tbl_deep_extend("force", {
      on_attach = require"custom.lsp.attach",
      flags = require "custom.lsp.flags",
    }, options)
  end,
}
