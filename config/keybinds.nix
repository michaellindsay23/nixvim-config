{ ... }:
{
  globals.mapleader = " ";

  keymaps = [
    # Global
    # Default mode is "" which means normal-visual-op
    {
      key = "<C-n>";
      action = "<CMD>NvimTreeToggle<CR>";
      options.desc = "Toggle NvimTree";
    }

    # File
    {
      mode = "n";
      key = "f";
      action = "+find/file";
    }
  ];
}
