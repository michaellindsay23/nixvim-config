{ pkgs, ... }:
{
  plugins = {
    # https://nix-community.github.io/nixvim/plugins/cmp-nvim-lsp.html
    cmp-nvim-lsp  = {
      enable = true;
    };

    # https://nix-community.github.io/nixvim/plugins/cmp-path.html
    cmp-path = {
      enable = true;
    };

    cmp = {
      enable = true;


    };
  };
}
