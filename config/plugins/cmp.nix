{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }  # completion from language servers
      { name = "luasnip"; }   # completion from snippet engine
      { name = "path"; }      # completion system file structure
      { name = "buffer"; }    # completion from current file (buffer)
      { name = "cmdline"; }   # completion from available commands
    ];
    settings.mapping = {
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
    settings.snippet.expand = ''
      function(args)
        require('luasnip').lsp_expand(args.body)
      end
    '';
  };
  plugins.cmp_luasnip.enable = true;
}
