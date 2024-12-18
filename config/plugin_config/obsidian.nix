{
  plugins.obsidian.enable = true;
  plugins.obsidian.settings = {
    workspaces = [
      {
        name = "brain";
        path = "~/obsidian/brain";
      }
    ];
    templates = {
      subdir = "Templates";
      date_format = "%Y-%m-%d";
    };
    daily_notes = {
      folder = "Journal";
      template = "Templates/daily.template.md";
      date_format = "%Y-%m-%d";
    };
  };
}
