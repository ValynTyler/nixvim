{
  plugins.telescope.enable = true;

  keymaps = [
    # Open Telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "Open Telescope";
      };
    }
  ];
}
