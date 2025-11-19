{ ... }:
{
  # https://nix-community.github.io/nixvim/plugins/cord/index.html?highlight=cord#cord
  plugins.cord = {
    enable = true;

    settings = {
      display = {
        show_time = true;
        swap_fields = false;
        swap_icons = false;
      };

      ide = {
        enable = true;
        show_status = true;
        text = "Idle";
        timeout = 300000;
        tooltip = "💤";
      };
 
      usercmd = false;
    };
  };

  extraConfigLua = ''
    require('cord').setup({
      text = {
        default = nil,
        workspace = function(opts) return 'In ' .. opts.workspace end,
        viewing = function(opts) return 'Viewing ' .. opts.filename end,
        editing = function(opts) return 'Editing ' .. opts.filename end,
        file_browser = function(opts) return 'Browsing files in ' .. opts.name end,
        plugin_manager = function(opts) return 'Managing plugins in ' .. opts.name end,
        lsp = function(opts) return 'Configuring LSP in ' .. opts.name end,
        docs = function(opts) return 'Reading ' .. opts.name end,
        vcs = function(opts) return 'Committing changes in ' .. opts.name end,
        notes = function(opts) return 'Taking notes in ' .. opts.name end,
        debug = function(opts) return 'Debugging in ' .. opts.name end,
        test = function(opts) return 'Testing in ' .. opts.name end,
        diagnostics = function(opts) return 'Fixing problems in ' .. opts.name end,
        games = function(opts) return 'Playing ' .. opts.name end,
        terminal = function(opts) return 'Running commands in ' .. opts.name end,
        dashboard = 'Home',
      }
    })
  '';

}
