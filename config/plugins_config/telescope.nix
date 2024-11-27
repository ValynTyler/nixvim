{
  plugins.telescope.enable = true;

  keymaps = [
    # Fuzzyfind all files
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "Open Telescope";
      };
    }
    # Fuzzyfind git (project) files
    {
      mode = "n";
      key = "<leader>fp";
      action = "<cmd>Telescope git_files<CR>";
    }
  ];
}
