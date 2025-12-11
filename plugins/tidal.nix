{ inputs, pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    vim-tidal 
  ];

  extraConfigLua = ''
    vim.g.tidal_target = "terminal"
  '';
}

