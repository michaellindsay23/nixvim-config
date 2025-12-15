{ pkgs, ... }:
{
  plugins.lazy = {
    enable = true;

    plugins = [
      {
        name = "tidal.nvim";
        pkg = tidalnvim;
      }
    ];
  };
}
