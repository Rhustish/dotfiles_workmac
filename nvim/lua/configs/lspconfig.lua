require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "jdtls", "omnisharp", "html", "cssls" , "clangd" ,"ts_ls" , "eslint" , "denols"}

local nvlsp = require "nvchad.configs.lspconfig"
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end



local nvim_lsp = require('lspconfig')
nvim_lsp.denols.setup {
  root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
}
-- lspconfig.java_language_server.setup{
--   cmd = {"bash","/Users/bbhatnagar/.local/share/nvim/mason/packages/java-language-server/dist/lang_server_mac.sh"}
-- }
lspconfig.omnisharp.setup {
  cmd = { "dotnet", "/Users/bbhatnagar/omnisharp-roslyn/bin/Release/OmniSharp.Stdio.Driver/net6.0/OmniSharp.dll" },
  settings = {
    FormattingOptions = {
      EnableEditorConfigSupport = true,
      OrganizeImports = true,
    },
    MsBuild = {
      LoadProjectsOnDemand = nil,
    },
    RoslynExtensionsOptions = {
      EnableAnalyzersSupport = true,
      EnableImportCompletion = true,
      AnalyzeOpenDocumentsOnly = nil,
      DiagnosticWorkersThreadCount = 8,
    },
    InlayHintsOptions = {
      EnableForParameters = true,
      ForLiteralParameters = true,
      ForIndexerParameters = true,
      ForObjectCreationParameters = true,
      ForOtherParameters = true,
      SuppressForParametersThatDifferOnlyBySuffix = false,
      SuppressForParametersThatMatchMethodIntent = false,
      SuppressForParametersThatMatchArgumentName = false,
      EnableForTypes = true,
      ForImplicitVariableTypes = true,
      ForLambdaParameterTypes = true,
      ForImplicitObjectCreation = true
    },
    Sdk = {
      IncludePrereleases = true,
    },
  },
}
