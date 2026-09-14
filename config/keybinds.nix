{ ... }:
{
  globals.mapleader = " "; 

  keymaps = [
    {
      options.desc = "Exit insert mode";
      mode = "i";
      key = "jk";
      action = "<Esc>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      options.desc = "Exit insert mode in term";
      mode = "t";
        key = "<Esc>";
      action = "<C-\\><C-n>";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      options.desc = "Toggle Neotree";
      key = "<C-n>";
      action = "<CMD>Neotree<CR>";
    }
    {
      options.desc = "Open terminal";
      mode = "n";
      key = "<Leader>t";
      action = "<CMD>term<CR>";
    }
    {
      options.desc = "Quit buffer";
      mode = "n";
      key = "<leader>q";
      action = "<CMD>q<CR>";
    }
    {
      options.desc = "Write buffer";
      mode = "n";
      key = "<leader>ww";
      action = "<CMD>w<CR>";
    }
    {
      options.desc = "Write quit buffer";
      mode = "n";
      key = "<leader>wq";
      action = "<CMD>wq<CR>";
    }
    {
      options.desc = "Swap tab forward";
      mode = "n";
      key = "<M-Tab>";
      action = "<CMD>bnext<CR>";
    }
    {
      options.desc = "Swap tab backward";
      mode = "n";
      key = "<M-S-Tab>";
      action = "<CMD>bprevious<CR>";
    }
    {
      options.desc = "Change selected window right";
      key = "<M-Right>";
      action = "<C-w>l";
    }
    {
      options.desc = "Change selected window left";
      key = "<M-Left>";
      action = "<C-w>h";
    }
    {
      options.desc = "Change selected window down";
      key = "<M-Down>";
      action = "<C-w>j";
    }
    {
      options.desc = "Change selected window up";
      key = "<M-Up>";
      action = "<C-w>k";
    }
    {
      options.desc = "Telescope find files";
      mode = "n";
      key = "<leader>ff";
      action = "<CMD>Telescope find_files<CR>";
    }
    {
      options.desc = "Indent line in visual";
      mode = "v";
      key = "<Tab>";
      action = ">gvll";
    }
    {
      options.desc = "indent line in normal";
      mode = "n";
      key = "<Tab>";
      action = ">>ll";
    }
    {
      options.desc = "Unindent line in visual";
      mode = "v";
      key = "<S-Tab>";
      action = "<gvhh";
    }
    {
      options.desc = "Unindent line in normal";
      mode = "n";
      key = "<S-Tab>";
      action = "<<hh";
    }
    {
      options.desc = "Backspace full word in insert";
      mode = "i";
      key = "<C-BS>";
      action = "db";
    }
  ];
}
