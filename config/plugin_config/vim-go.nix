{ pkgs, ... }:

{
  extraPlugins = with pkgs; [ vimPlugins.vim-go ];
  extraConfigLua = "vim.g.go_fmt_autosave = 0";
}
