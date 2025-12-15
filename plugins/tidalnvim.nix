{ pkgs, lib, config, ... }:
let
  tidal-nvim-module = lib.nixvim.plugins.mkNeovimPlugin {
    name = "tidal-nvim";
    maintainers = [ "Gethin Davies" ];
    package = "tidal-nvim";
  };
in
{
  imports = [ tidal-nvim-module ];
  
  plugins.tidal-nvim = {
    enable = true;
  };
}
