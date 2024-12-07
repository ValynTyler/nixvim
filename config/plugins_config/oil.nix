{
  plugins.oil = {
    enable = true;
    settings = {
      default_file_explorer = true;
      constrain_cursor = "editable";
      delete_to_trash = true;
      view_options.show_hidden = true;
    };
  };
  keymaps = [
    # Open Oil
    {
      mode = "n";
      key = "<leader>o";
      action = "<CMD>Oil %:h<CR>";
    }
  ];
}
