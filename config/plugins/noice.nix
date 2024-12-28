{
  plugins.noice.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>ca";
      action = "<cmd>lua require('notify').dismiss({ silent = true, pending = true })<CR>";
    }
  ];
}
