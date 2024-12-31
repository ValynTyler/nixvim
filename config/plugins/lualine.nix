{
  plugins.lualine.enable = true;
  plugins.lualine.sections.lualine_x = 
  let
    bright_orange = "#fe8019";
  in
  [
    {
      name.__raw = "require('noice').api.statusline.mode.get";
      color = { fg = bright_orange ; };
      extraConfig.cond.__raw = "require('noice').api.statusline.mode.has";
    }
  ];
}
