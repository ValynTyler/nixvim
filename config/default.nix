{
  # Import all your configuration modules here
  imports = [
    ./plugins.nix
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
