{ ... }:
{
  globals.mapleader = ",";

  keymaps = [
    # Global
    # Default mode is "" which means normal-visual-op
#    {
#      mode = "n";
#      key = "";
#      action = "<CMD>WhichKey<CR>";
#    }
    {
      key = "<C-n>";
      action = "<CMD>Neotree<CR>";
      options.desc = "Toggle Neotree";
    }
    {
      mode = "n";
      key = "<leader>c";
      action = "<CMD>bd!<CR>";
      options.desc = "close buffer";
    }

    # File
    {
      mode = "n";
      key = "<leader>f";
      action = "<CMD>Telescope<CR>";
    }
  ];
}
