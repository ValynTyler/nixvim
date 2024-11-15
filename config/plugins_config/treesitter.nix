{
  plugins.treesitter = {
    enable = true;
    settings = {
      auto_install = true;
      ensure_installed = [
        "rust"
        "go"
        "nix"
        "lua"
        "vim"
        "vimdoc"
        "query"
        "toml"
        "yaml"
        "markdown"
        "markdown_inline"
      ];

      # highlight
      hightlight.enable = true;
      hightlight.additional_vim_regex_highlighting = false;
    };
  };
}
