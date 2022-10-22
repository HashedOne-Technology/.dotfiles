local status_ok, lsp_installer = pcall(require, "lspconfig")
if not status_ok then
  return
end

lsp_installer.setup({
   automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
   ui = {
     icons = {
       server_installed = "✓",
       server_pending = "➜",
       server_uninstalled = "✗"
     }
   }
})