{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
    { key = "<A-1>"; action = "<cmd>BufferLineGoToBuffer 1<CR>"; }
    { key = "<A-2>"; action = "<cmd>BufferLineGoToBuffer 2<CR>"; }
    { key = "<A-3>"; action = "<cmd>BufferLineGoToBuffer 3<CR>"; }
    { key = "<A-4>"; action = "<cmd>BufferLineGoToBuffer 4<CR>"; }
  ];
}
