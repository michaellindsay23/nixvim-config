{ ... }:
{
# https://nix-community.github.io/nixvim/plugins/cursorline/index.html
  plugins.cursorline = {
    enable = true;
    autoLoad = true;

    settings = {
      cursorline = {
        enable = true;
        number = true;
      };
      cursorword = {
        enable = true;
        hl = {
          underline = true;
        };
        min_length = 3;
      };
    };
  };
}
