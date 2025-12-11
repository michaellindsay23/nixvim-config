{ config, inputs, pkgs, ... }:
let
  tidalPkgs = import inputs.nixpkgs {
    system = pkgs.system;
    overlays = [ inputs.tidalcycles.overlays.default ];
  };
in
{
  extraPackages = with tidalPkgs; [
    vimPlugins.vim-tidal
    tidal
    supercollider
  ];

  extraConfigLua = ''
  vim.cmd([[
    let g:tidal_target = "terminal"
    let g:tidal_sc_enable = 1
    
    " automatically start the GHCi session when opening a .tidal file
    autocmd BufReadPre *.tidal silent! :call TidalStart(0)
  ]])
  '';
}

