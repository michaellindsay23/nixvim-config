{ ... }:
{
  colorschemes = {
    catppuccin = {
      enable = true;

      settings = {
        flavour = "mocha";
        transparent_background = true;

        integrations = {
          cmp = true;
          treesitter = true;
        };
      };
    };

    gruvbox = {
      enable = false;
    };
  };
}
