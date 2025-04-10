{
  plugins.lsp = {
    enable = true;
    servers = {
      lua_ls.enable = true;
      nixd.enable = true;
      gopls.enable = true;
      emmet_ls.enable = true;
      ccls.enable = true;
      jdtls.enable = true;
      cssls.enable = true;
      eslint.enable = true;
      pyright.enable = true;

      # godot
      gdscript.enable = true;
      gdscript.package = null;

      # rust
      rust_analyzer.enable = true;
      rust_analyzer.installRustc = true;
      rust_analyzer.installCargo = true;
      rust_analyzer.installRustfmt = true;
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
