{ ... }:
{
  plugins.lsp = {
    enable = true;

    servers = {
      clangd.enable = true;

      #java-lanuage-server.enable = true;

      lua_ls.enable = true;

      nixd.enable = true;
    
      pyright.enable = true;

      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };
  };
}
