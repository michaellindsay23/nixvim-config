{ ... }:
{
  globals.mapleader = ",";

  keymaps = [
    # Global
    # Default mode is "" which means normal-visual-op
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
    # Swap tabs
    {
      key = "<M-Tab>";
      action = "<CMD>bn<CR>";
    }
    {
      key = "<M-S-Tab>";
      action = "<CMD>bp<CR>";
    }


    # File
    {
      mode = "n";
      key = "<leader>ff";
      action = "<CMD>Telescope find_files<CR>";
      options.desc = "files";
    }
    {
        mode = "v";
        key = "<Tab>";
        action = ">gv";
        options.desc = "Indent Line";
    }
  ];
}
