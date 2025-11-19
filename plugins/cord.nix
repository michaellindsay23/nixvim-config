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

      text = {
        editing = "Editing {}";
        file_browser = "Browsing files in {}";
        vcs = "Committing changes in {}";
        viewing = "Viewing {}";
        workspace = "In {}";
      };

      usercmd = false;
    };
  };
}
