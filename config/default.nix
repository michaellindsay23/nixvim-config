
{ ... }:
{
  imports = [
    ./colorscheme.nix
    ./keybinds.nix
    ./options.nix
  ];

  config = {
    # Keep vim available
    viAlias = false;
    vimAlias = false;
  };
}
