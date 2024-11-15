{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ];

  colorschemes.gruvbox.enable = true;

  globalOptions = {
    shiftwidth = 2;
    scrolloff = 999;
  };
}
