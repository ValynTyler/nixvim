{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./options.nix
    ./keymaps.nix
  ];

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      transparent_mode = true;
    };
  };
}
