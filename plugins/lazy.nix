{ pkgs, ... }:
let
  tidalnvim = pkgs.vimUtils.buildVimPlugin {
    name = "tidal.nvim";
    src = pkgs.fetchFromGitHub {
      owner = "grddavies";
      repo = "tidal.nvim";
      rev = "d0c36a77cc63c22648e792796b1815b44164653a";
      hash = "sha256-sbxBIybZdQptiD3zDJtitOcuy5bZSwgf9EPpMlik8Ds=";
    };
  };
in
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
