# homepage: https://github.com/nvim-treesitter/nvim-treesitter
# nixvim doc: https://nix-community.github.io/nixvim/plugins/treesitter/index.html
{ pkgs, ... }:
{
  plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      c
      lua
      nix
      rust
    ];
  };
}
