return {
  capabilities = {
    offsetEncoding = "utf-8",
    memoryUsageProvider = true,
  },
  filetypes = { "c", "cpp", "cuda", "objc", "objcpp", "opencl" },
  init_options = {
    clangdFileStatus = true, -- Provides information about activity on clangd’s per-file worker thread
    -- TODO: figure out what is this
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
}
