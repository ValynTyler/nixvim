{
  plugins.lualine.enable = true;
  plugins.lualine.settings.sections.lualine_x = 
  let
    bright_orange = "#fe8019";
  in
  [
    {
      "__unkeyed.1".__raw = "require('noice').api.statusline.mode.get";
      color = { fg = bright_orange ; };
      cond.__raw = "require('noice').api.statusline.mode.has";
    }
  ];
}
