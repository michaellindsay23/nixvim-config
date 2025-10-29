{ ... }:
{
  plugins.neo-tree = {
    enable = true;
    
    settings = {
      auto_clean_after_session_restore = true;

      close_if_last_window = true;
    };
  };
}
