{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";

    tidalcycles.url = "github:mitchmindtree/tidalcycles.nix";
  };

  outputs = { 
    nixpkgs, 
    nixvim, 
    flake-parts, 
    ... 
  }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, config, options, ... }:
        let
	        pkgs = import nixpkgs { 
            inherit system;

            overlays = [(final: prev: {
              vimPlugins = prev.vimPlugins // {
                tidal-nvim = pkgs.vimUtils.buildVimPlugin {
                  name = "tidal-nvim";
                  version = "unstable";
                  src = pkgs.fetchFromGitHub {
                    owner = "grddavies";
                    repo = "tidal.nvim";
                    rev = "fa4673e181e18fd1719ae17a1d4f4ecce2de37aa";
                    hash = "sha256-sbxBIybZdQptiD3zDJtitOcuy5bZSwgf9EPpMlik8Ds=";
                  };
                };

                meta.homepage = "https://github.com/grddavies/tidal.nvim";
              };
            })];
          };

          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs; # or alternatively, set `pkgs`
            module = ./.; # import the module directly
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              inherit inputs;
            };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };
        };
    };
}
