{
  plugins.cmp-cmdline.enable = true;
  plugins.cmp.cmdline = {
    "/" = {
      mapping = {
        __raw = "cmp.mapping.preset.cmdline()";
      };
      sources = [
      {
        name = "buffer";
      }
      ];
    };
    ":" = {
      mapping = {
        __raw = "cmp.mapping.preset.cmdline()";
      };
      sources = [
      {
        name = "path";
      }
      {
        name = "cmdline";
        option = {
          ignore_cmds = [
            "Man"
              "!"
          ];
        };
      }
      ];
    };
  };
}
