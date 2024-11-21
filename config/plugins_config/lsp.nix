{
  plugins.lsp = {
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
    
    # buffer-specific keymaps
    keymaps.lspBuf = {

      K = "hover";
      gd = "definition";
      gD = "declaration";
      gi = "implementation";
      go = "type_definition";
      gr = "references";
      gs = "signature_help";
      gt = "type_definition";
      "<F2>" = "rename";
      "<F4>" = "code_action";
    };
  };
}
