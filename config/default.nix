{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ];

  colorschemes.gruvbox.enable = true;

  plugins = {
    # status line
    lualine.enable = true;

    # lazygit
    lazygit.enable = true;

    # undotree
    undotree.enable = true;

    # treesitter
    treesitter.enable = true;
    treesitter.settings = {
      auto_install = true;
      ensure_installed = [
        "rust"
        "go"
        "nix"
        "lua"
        "vim"
        "vimdoc"
        "query"
        "toml"
        "yaml"
        "markdown"
        "markdown_inline"
      ];

      # highlight
      hightlight.enable = true;
      hightlight.additional_vim_regex_highlighting = false;
    };

    # telescope
    telescope.enable = true;

    # harpoon
    harpoon.enable = true;
    harpoon.keymaps = {
      toggleQuickMenu = "<leader>hh";
      addFile = "<leader>ha";
      navFile = {
        "1" = "<leader>h1";
        "2" = "<leader>h2";
        "3" = "<leader>h3";
        "4" = "<leader>h4";
      };
      
    };

    # lsp
    lsp.enable = true;
    lsp.servers = {
      lua_ls.enable = true;
      nil_ls.enable = true;
      gopls.enable = true;

      # rust
      rust_analyzer.enable = true;
      rust_analyzer.installRustc = true;
      rust_analyzer.installCargo = true;
    };
  };

  globalOpts = {
    scrolloff = 12;

    # shiftwidth
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;
    expandtab = true;

    # numbers
    nu = true;
    rnu = true;
  };

  globals.mapleader = " ";

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

    # Open git client
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "Open git client";
      };
    }
    
    # Open Undotree
    {
      mode = "n";
      key = "<leader>u";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        desc = "Open Undotree";
      };
    }

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
