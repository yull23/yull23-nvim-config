return {
  -- mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- Develop Languages
        "typescript-language-server",
        "json-lsp",
        "html-lsp",
        "css-lsp",
        "tailwindcss-language-server",
        "prisma-language-server",
        "sqlls",

        -- Markdown - Obsidian
        "marksman",
        "prosemd-lsp",

        -- Frameworks
        "astro-language-server",
        "emmet-ls",

        -- Tools
        "dockerfile-language-server",
        "eslint-lsp",
        "yaml-language-server",
      })
    end,
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Configuraciones específicas para cada servidor LSP
      servers = {
        ["typescript-language-server"] = {},
        ["json-lsp"] = {},
        ["html-lsp"] = {},
        ["css-lsp"] = {},
        ["tailwindcss-language-server"] = {},
        ["prisma-language-server"] = {},
        sqlls = {},
        marksman = {},
        ["prosemd-lsp"] = {},
        ["astro-language-server"] = {},
        ["emmet-ls"] = {},
        ["dockerfile-language-server"] = {},
        ["eslint-lsp"] = {},
        ["yaml-language-server"] = {},
      },
    },
  },
}
