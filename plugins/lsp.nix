{ ... }:
{
  plugins.lsp = {
    enable = true;

    servers = {
      bashls.enable = true;

      clangd.enable = true;

      #java-lanuage-server.enable = true;

      jsonls.enable = true;

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
