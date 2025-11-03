
{ ... }:
{
  imports = [
    ./colorscheme.nix
    ./options.nix
  ];

  config = {
    # Use <Space> as leader key
    globals.mapleader = " ";

    # Keep vim available
    viAlias = false;
    vimAlias = false;
  };
}
