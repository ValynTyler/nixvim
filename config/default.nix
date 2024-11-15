{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./options.nix
    ./keymaps.nix
  ];

  colorschemes.gruvbox.enable = true;

  plugins = {
    # status line
    lualine.enable = true;

    # treesitter
    treesitter.enable = true;
    treesitter.settings = {
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

    # lsp
    lsp.enable = true;
    lsp.servers = {
      lua_ls.enable = true;
      nil_ls.enable = true;
      gopls.enable = true;

      # rust
      rust_analyzer.enable = true;
      rust_analyzer.installRustc = true;
      rust_analyzer.installCargo = true;
    };

    # completion
    cmp.enable = true;
    cmp.autoEnableSources = true;
    cmp.settings.sources = [
    { name = "nvim_lsp"; }
    { name = "path"; }
    { name = "buffer"; }
    ];
    cmp.settings.mapping = {
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      "<C-j>" = "cmp.mapping.select_next_item()";
      "<C-k>" = "cmp.mapping.select_prev_item()";
      "<C-e>" = "cmp.mapping.abort()";
      "<C-b>" = "cmp.mapping.scroll_docs(-4)";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<C-Space>" = "cmp.mapping.complete()";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
      "<C-l>" = ''
        cmp.mapping(function()
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          end
        end, { 'i', 's' })
      '';
      "<C-h>" = ''
        cmp.mapping(function()
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { 'i', 's' })
      '';
    };
  };
}
