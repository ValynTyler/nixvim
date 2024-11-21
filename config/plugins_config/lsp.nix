{
  plugins.lsp = {
    # lsp
    enable = true;
    servers = {
      lua_ls.enable = true;
      nil_ls.enable = true;
      gopls.enable = true;
      emmet_ls.enable = true;

      # rust
      rust_analyzer.enable = true;
      rust_analyzer.installRustc = true;
      rust_analyzer.installCargo = true;
    };
  };
}
