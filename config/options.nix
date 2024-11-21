{
  globals.mapleader = " ";

  globalOpts = {
    # shiftwidth
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;
    expandtab = true;

    # numbers
    nu = true;
    rnu = true;

    # clipboard
    clipboard = {
      providers = {
        wl-copy.enable = true; # Wayland 
        xsel.enable = true; # For X11
      };
      register = "unnamedplus";
    };
  };
}
