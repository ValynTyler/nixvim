{
  keymaps = [
    # Open explorer
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Explore<CR>";
      options = {
        desc = "Open explorer";
      };
    }

    # Delete to void register
    {
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = "\"_d";
    }

    # Keep cursor vertically centered
    # {
    #   mode = [ "n" "v" ];
    #   key = "j";
    #   action = "jzz";
    # }
    # {
    #   mode = [ "n" "v" ];
    #   key = "k";
    #   action = "kzz";
    # }
    # {
    #   mode = [ "n" "v" ];
    #   key = "G";
    #   action = "Gzz";
    # }

    # Move currently selected line with J and K
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }

    # Copy to system clipboard
    {
      mode = [ "n" "v" ];
      key = "<leader>y";
      action = "\"+y";
    }
  ];
}
