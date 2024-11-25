{ pkgs, ... }:

{
  extraPlugins = with pkgs; [ vimPlugins.vim-go ];
  extraConfigLua = "";
}
