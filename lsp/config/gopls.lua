return {
  settings = {
    gopls = {
      semanticTokens = true,
      templateExtensions = { "tpl", "yaml" },
      experimentalPostfixCompletions = true,
      gofumpt = true,
      usePlaceholders = true,
      staticcheck = true,
      analyses = {
        shadow = true,
        nilness = true,
        unusedresult = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
        unreachable = true,
      },
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
